class Solution:
    def getCommpliment(self, char) -> str:
        if char == ")":
            return "("

        if char == "}":
            return "{"

        if char == "]":
            return "["

    def isValid(self, s: str) -> bool:
        closingBrackets = {"}", "]", ")"}
        stack = []
        for char in s:
            if char in closingBrackets:
                if len(stack) == 0:
                    return False
                else:
                    pop = stack.pop()
                    if pop != self.getCommpliment(char):
                        return False
            else:
                stack.append(char)
            # print char
        if len(stack) == 0:
            return True
        else:
            return False