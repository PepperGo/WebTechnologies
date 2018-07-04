# Notes

### 1. Spring Restful API - POST String to Controller
- 1.  
```
    @RequestMapping(value="/", method = POST)
    public String extractMySQL(@RequestBody String query){
        return query;
    }
```
- 2.   
```
    /**
     * Using Postman to send request:
     * For Post request, format: application/json
     * Body: "SELECT CUST_NAME FROM CUSTOMERS WHERE CUST_NAME LIKE 'Kash%'"
     *
     * @param query
     * @return
     */
    @RequestMapping(value = "/test", method = POST, consumes = "application/json")
    public ResponseEntity<String> testPostString(@RequestBody String query) {
        logger.info(query);
        return new ResponseEntity<>(query, HttpStatus.OK);
    }
```
