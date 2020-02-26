
   --EndPioints                         --descriptions
GET /customerDetails{accountNumber}    -- get the account number of the customer

GET /customerDetails{accountName}      -- get the account name of the customer

GET /customerDetails{bvn}              -- get the bvn number of the customer

GET /customerDetails{startus}           -- get the startus of the customer account

GET /customerDetails{currency}          -- get the currency of the account

POST /customerBalance/{accountNumber}   --post the customer balance by checking the name, 
        {currency} {currentbalance}     -- account number  then show the balance

PUSH /transactionDetails {accountNumber}
{amount} {currency} {channel} {debitOrCredit}
{narration} {reffrenceID}


--API 

{
  "settings": [
    ...,
    {
      "key": "CustomerDetails",
      "description": "Credit Rules settings",
      "context": "Entity",
      "pathPattern": "/credit-rules",
      "httpOperations": [
        {
          "method": "GET",
          "url": "/settings/credit-rules",
          "parameters": [],
          "responseType": {
            "$ref": "#/definitions/creditRules",
            "definitions": {
              "creditRules": {
                "additionalProperties": false,
                "type": "object",
                "properties": {
                  "includeDebitAlert": {
                    "type": "boolean"
                  },
                    "accountAction":{
                        "type": "string"
                        "enum": [
                            "credit"
                            "debit"
                            "freeze"
                        ]
                    },
                  "accountStatus": {
                      "type": "string"
                      "enum":[
                          "active",
                          "inactive",
                          "dormat"
                      ]
                  },
                  "accountNumber": {
                    "maximum": 10,
                    "type": "integer",
                    "minimum": 0
                  },
                  "currency": {
                    "type": "string"
                    "enum": [
                        "currencyType" 
                    ]
                  },
                  "rateUsageIndividually": {
                    "type": "boolean"
                  }
                }
              }
            }
          }
        },
        ...
      ]

    }
  ]
}