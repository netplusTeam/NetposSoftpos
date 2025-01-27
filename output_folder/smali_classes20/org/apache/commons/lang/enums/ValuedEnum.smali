.class public abstract Lorg/apache/commons/lang/enums/ValuedEnum;
.super Lorg/apache/commons/lang/enums/Enum;
.source "ValuedEnum.java"


# static fields
.field private static final serialVersionUID:J = -0x62f19b5ff54bca1dL


# instance fields
.field private final iValue:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 131
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enums/Enum;-><init>(Ljava/lang/String;)V

    .line 132
    iput p2, p0, Lorg/apache/commons/lang/enums/ValuedEnum;->iValue:I

    .line 133
    return-void
.end method

.method protected static getEnum(Ljava/lang/Class;I)Lorg/apache/commons/lang/enums/Enum;
    .locals 4
    .param p0, "enumClass"    # Ljava/lang/Class;
    .param p1, "value"    # I

    .line 148
    if-eqz p0, :cond_2

    .line 151
    invoke-static {p0}, Lorg/apache/commons/lang/enums/Enum;->getEnumList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 152
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/lang/enums/ValuedEnum;

    .line 154
    .local v2, "enumeration":Lorg/apache/commons/lang/enums/ValuedEnum;
    invoke-virtual {v2}, Lorg/apache/commons/lang/enums/ValuedEnum;->getValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 155
    return-object v2

    .line 157
    .end local v2    # "enumeration":Lorg/apache/commons/lang/enums/ValuedEnum;
    :cond_0
    goto :goto_0

    .line 158
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 149
    .end local v0    # "list":Ljava/util/List;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Enum Class must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getValueInOtherClassLoader(Ljava/lang/Object;)I
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 209
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getValue"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 210
    .local v0, "mth":Ljava/lang/reflect/Method;
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 211
    .local v1, "value":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 216
    .end local v0    # "mth":Ljava/lang/reflect/Method;
    .end local v1    # "value":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 214
    :catch_1
    move-exception v0

    goto :goto_0

    .line 212
    :catch_2
    move-exception v0

    .line 218
    :goto_0
    nop

    .line 219
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should not happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 188
    if-ne p1, p0, :cond_0

    .line 189
    const/4 v0, 0x0

    return v0

    .line 191
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget v0, p0, Lorg/apache/commons/lang/enums/ValuedEnum;->iValue:I

    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enums/ValuedEnum;->getValueInOtherClassLoader(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 195
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Different enum class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_2
    iget v0, p0, Lorg/apache/commons/lang/enums/ValuedEnum;->iValue:I

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/enums/ValuedEnum;

    iget v1, v1, Lorg/apache/commons/lang/enums/ValuedEnum;->iValue:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getValue()I
    .locals 1

    .line 167
    iget v0, p0, Lorg/apache/commons/lang/enums/ValuedEnum;->iValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 230
    iget-object v0, p0, Lorg/apache/commons/lang/enums/ValuedEnum;->iToString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lorg/apache/commons/lang/enums/ValuedEnum;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "shortName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/lang/enums/ValuedEnum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/lang/enums/ValuedEnum;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/enums/ValuedEnum;->iToString:Ljava/lang/String;

    .line 234
    .end local v0    # "shortName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/enums/ValuedEnum;->iToString:Ljava/lang/String;

    return-object v0
.end method
