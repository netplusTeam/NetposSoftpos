.class public Lch/qos/logback/core/joran/util/beans/BeanUtil;
.super Ljava/lang/Object;
.source "BeanUtil.java"


# static fields
.field public static final PREFIX_ADDER:Ljava/lang/String; = "add"

.field public static final PREFIX_GETTER_GET:Ljava/lang/String; = "get"

.field public static final PREFIX_GETTER_IS:Ljava/lang/String; = "is"

.field public static final PREFIX_SETTER:Ljava/lang/String; = "set"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getParameterCount(Ljava/lang/reflect/Method;)I
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 63
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static getPropertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 92
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "methodName":Ljava/lang/String;
    const-string v1, "get"

    invoke-static {v0, v1}, Lch/qos/logback/core/joran/util/beans/BeanUtil;->getSubstringIfPrefixMatches(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "rawPropertyName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 95
    const-string/jumbo v2, "set"

    invoke-static {v0, v2}, Lch/qos/logback/core/joran/util/beans/BeanUtil;->getSubstringIfPrefixMatches(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    :cond_0
    if-nez v1, :cond_1

    .line 98
    const-string v2, "is"

    invoke-static {v0, v2}, Lch/qos/logback/core/joran/util/beans/BeanUtil;->getSubstringIfPrefixMatches(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    :cond_1
    if-nez v1, :cond_2

    .line 101
    const-string v2, "add"

    invoke-static {v0, v2}, Lch/qos/logback/core/joran/util/beans/BeanUtil;->getSubstringIfPrefixMatches(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    :cond_2
    invoke-static {v1}, Lch/qos/logback/core/joran/util/beans/BeanUtil;->toLowerCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getSubstringIfPrefixMatches(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "wholeString"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 130
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isAdder(Ljava/lang/reflect/Method;)Z
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 24
    invoke-static {p0}, Lch/qos/logback/core/joran/util/beans/BeanUtil;->getParameterCount(Ljava/lang/reflect/Method;)I

    move-result v0

    .line 25
    .local v0, "parameterCount":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 26
    return v1

    .line 28
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 29
    .local v2, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_1

    .line 30
    return v1

    .line 32
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "methodName":Ljava/lang/String;
    const-string v3, "add"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public static isGetter(Ljava/lang/reflect/Method;)Z
    .locals 6
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 42
    invoke-static {p0}, Lch/qos/logback/core/joran/util/beans/BeanUtil;->getParameterCount(Ljava/lang/reflect/Method;)I

    move-result v0

    .line 43
    .local v0, "parameterCount":I
    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 44
    return v1

    .line 46
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 47
    .local v2, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_1

    .line 48
    return v1

    .line 50
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "methodName":Ljava/lang/String;
    const-string v4, "get"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "is"

    if-nez v4, :cond_2

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 52
    return v1

    .line 54
    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 55
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-class v4, Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 56
    return v1

    .line 59
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public static isSetter(Ljava/lang/reflect/Method;)Z
    .locals 6
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 72
    invoke-static {p0}, Lch/qos/logback/core/joran/util/beans/BeanUtil;->getParameterCount(Ljava/lang/reflect/Method;)I

    move-result v0

    .line 73
    .local v0, "parameterCount":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 74
    return v2

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 77
    .local v3, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_1

    .line 78
    return v2

    .line 80
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "methodName":Ljava/lang/String;
    const-string/jumbo v5, "set"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 82
    return v2

    .line 84
    :cond_2
    return v1
.end method

.method public static toLowerCamelCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .line 115
    if-nez p0, :cond_0

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    return-object p0

    .line 121
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    return-object p0

    .line 124
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 125
    .local v0, "chars":[C
    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, v0, v2

    .line 126
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method
