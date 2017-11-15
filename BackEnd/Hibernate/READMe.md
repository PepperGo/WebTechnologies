# Hibernate Advanced 

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
You need to follow following steps to create simple example:  
1. Create the persistent classes  

```Java
@Entity  
@Table(name = "employee101")  
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)  
@DiscriminatorColumn(name="type",discriminatorType=DiscriminatorType.STRING)  
@DiscriminatorValue(value="employee")  
  
public class Employee {  
@Id  
@GeneratedValue(strategy=GenerationType.AUTO)  
      
@Column(name = "id")  
private int id;  
  
@Column(name = "name")  
private String name;  
  
//setters and getters  
}  

```

2. Create the configuration file  
3. Create the class to store the fetch the data  





#### 2. Mapping List






reference:
[Hibernate JavaTpoint](https://www.javatpoint.com/hibernate-inheritance-mapping-tutorial)
