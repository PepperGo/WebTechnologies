# Hibernate Advance 

### Collection Mapping:

#### 1. Hibernate Inheritance Mapping

We can map the inheritance hierarchy classes with the table of the database. There are three inheritance mapping strategies defined in the hibernate:  
1. Table Per Hierarchy  
2. Table Per Concrete class  
3. Table Per Subclass  

##### (1) Hibernate Table Per Hierarchy using Annotation  
You need to use @Inheritance(strategy=InheritanceType.SINGLE_TABLE), @DiscriminatorColumn and @DiscriminatorValue annotations for mapping table per hierarchy strategy.  

Example:  
![](https://www.javatpoint.com/images/hibernate/inheritance1.jpg)  




#### 2. Mapping List






reference:
[Hibernate JavaTpoint](https://www.javatpoint.com/hibernate-inheritance-mapping-tutorial)
