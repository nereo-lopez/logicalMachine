namespace stateMachine {

    open Microsoft.Quantum.Math;
    @EntryPoint()
    operation runMachine() : Bool {

        mutable currentState = false;
        mutable compareOperator = true;

        set currentState = And(currentState, compareOperator);
        Message($"Result: {currentState}");
        set currentState = Not(currentState);
        Message($"Result: {currentState}");
        set currentState = OrGate(currentState, compareOperator);
        Message($"Result: {currentState}");
        set currentState = XorGate(currentState, compareOperator);
        Message($"Result: {currentState}");
        set currentState = NandGate(currentState, compareOperator);
        Message($"Result: {currentState}");
        set currentState = NorGate(currentState, compareOperator);
        Message($"Result: {currentState}");
        set currentState = XnorGate(currentState, compareOperator);
        Message($"Result: {currentState}");
        return currentState;
    }

    operation Not(input : Bool) : Bool {
        return not input;
    }

    operation And(a : Bool, b : Bool) : Bool {
        return a and b;
    }

    operation OrGate(input1 : Bool, input2 : Bool) : Bool {
        return input1 or input2;
    }

    operation XorGate(input1 : Bool, input2 : Bool) : Bool {
        return input1 != input2;
    }

    operation NandGate(input1 : Bool, input2 : Bool) : Bool {
        return not (input1 and input2);
    }

    operation NorGate(input1 : Bool, input2 : Bool) : Bool {
        return not (input1 or input2);
    }

    operation XnorGate(input1 : Bool, input2 : Bool) : Bool {
        return input1 == input2;
    }

    operation TestAndOperator() : Unit {
        let result = And(true, true);
        Message($"Result of AND operation: {result}");
    }
}