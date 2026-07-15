declare module '@apiverve/exercises' {
  export interface exercisesOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface exercisesResponse {
    status: string;
    error: string | null;
    data: ExercisesData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface ExercisesData {
      count:      number | null;
      filteredOn: (null | string)[];
      exercises:  Exercise[];
  }
  
  interface Exercise {
      name:         null | string;
      force:        null | string;
      level:        null | string;
      mechanic:     null | string;
      equipment:    null | string;
      instructions: (null | string)[];
      muscle:       null | string;
  }

  export default class exercisesWrapper {
    constructor(options: exercisesOptions);

    execute(callback: (error: any, data: exercisesResponse | null) => void): Promise<exercisesResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: exercisesResponse | null) => void): Promise<exercisesResponse>;
    execute(query?: Record<string, any>): Promise<exercisesResponse>;
  }
}
