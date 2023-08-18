# After importing tables into Postgress and setting Primary Key and Fogeign Key, connection was lost and code input was not saved. The following are the constraints
# are the contraints made to each table that were saved.abs


# Created a foreign key for the detp_no
ALTER TABLE IF EXISTS public.department_employee
    ADD CONSTRAINT department_employee_dept_no_fkey FOREIGN KEY (dept_no)
    REFERENCES public.departments (dept_no) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE SET NULL;

#Created a foreigh key for the emp_no
ALTER TABLE IF EXISTS public.department_manager
    ADD CONSTRAINT department_manager_emp_no_fkey FOREIGN KEY (emp_no)
    REFERENCES public.employee (emp_no) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE SET NULL; 

# Created another foreign key for the dept_no
ALTER TABLE IF EXISTS public.department_manager
    ADD CONSTRAINT department_manager_dept_no_fkey FOREIGN KEY (dept_no)
    REFERENCES public.departments (dept_no) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE SET NULL

# Created the dept_no as primary key for this table
ALTER TABLE IF EXISTS public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_no);


# Created the emp_no as primary key for this table
ALTER TABLE IF EXISTS public.employee
    ADD CONSTRAINT "employee list_pkey" PRIMARY KEY (emp_no);

# Changed collumn name from emp_title_id to title_id to match the titles table
ALTER TABLE IF EXISTS public.employee
    ADD COLUMN title_id character varying(15) COLLATE pg_catalog."default" NOT NULL;

# Created another foreign key for emp_no
ALTER TABLE IF EXISTS public.salaries
    ADD CONSTRAINT salaries_emp_no_fkey FOREIGN KEY (emp_no)
    REFERENCES public.employee (emp_no) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE SET NULL;

# Created the title_id as primary key for this table
ALTER TABLE IF EXISTS public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (title_id);