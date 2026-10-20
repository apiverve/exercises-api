from setuptools import setup, find_packages

setup(
    name='apiverve_exercises',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Exercises filters movements by target muscle group, equipment, and exercise name, returning matching exercises with their force type and required gear. Paid plans add step-by-step instructions, difficulty levels, and movement mechanics.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/exercises?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
