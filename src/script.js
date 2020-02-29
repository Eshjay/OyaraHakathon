let UserId = document.getElementById('user-id');
let channel = document.getElementById('payment-channels')

let transaction;

let isSuccessful = false;

while(isSuccessful == false){
    if(UserId > 1 || UserId <= 4){
        let userID = uniqueID
    } else {
        
    }
}


function isSuccessful() {
   let userID = [1,2,3,4];
   let channel= ["POS", "ATM", "e-channels" ];
    let accountNo = document.getElementById('account-no');
    let amount = document.getElementById('transaction-amount');
   let withdrew = false;
    let charges;
    withdraw = function(){
        if(this.userID > 1 || this.userID < 5){
            let accountValid = /^\d{10}$/;
            if((this.accountNO.value.match(accountValid)){
                if(amount < 5000){
                    this.charges = amount * 0.05;
                    if(this.charges > 10){
                        this.charges = 10;
                    }
                } else if(amount > 50001 || ammount <= 50000){
                    this.charges = amount * 0.045;
                    if(this.charges > 25){
                        this.charges = 25;
                    }
                } else if(amount >= 50000){
                    this.charges = amount * 0.03;
                    if(this.charges > 50){
                        this.charges = 50;
                    }
                }
            }
        }else(
            document.writeInnerHTML
        )
    }
}