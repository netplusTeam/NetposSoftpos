.class public Lcom/sleepycat/persist/evolve/Converter;
.super Lcom/sleepycat/persist/evolve/Mutation;
.source "Converter.java"


# static fields
.field private static final serialVersionUID:J = 0x3f41e5b0088e0267L


# instance fields
.field private conversion:Lcom/sleepycat/persist/evolve/Conversion;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/sleepycat/persist/evolve/Conversion;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "classVersion"    # I
    .param p3, "conversion"    # Lcom/sleepycat/persist/evolve/Conversion;

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sleepycat/persist/evolve/Converter;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sleepycat/persist/evolve/Conversion;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sleepycat/persist/evolve/Conversion;)V
    .locals 5
    .param p1, "declaringClassName"    # Ljava/lang/String;
    .param p2, "declaringClassVersion"    # I
    .param p3, "fieldName"    # Ljava/lang/String;
    .param p4, "conversion"    # Lcom/sleepycat/persist/evolve/Conversion;

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/persist/evolve/Mutation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    iput-object p4, p0, Lcom/sleepycat/persist/evolve/Converter;->conversion:Lcom/sleepycat/persist/evolve/Conversion;

    .line 94
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 96
    .local v0, "cls":Ljava/lang/Class;
    :try_start_0
    const-string v1, "equals"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 97
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 105
    .end local v1    # "m":Ljava/lang/reflect/Method;
    nop

    .line 106
    return-void

    .line 98
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conversion class does not implement the equals method explicitly (Object.equals is not sufficient): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 101
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "cls":Ljava/lang/Class;
    .end local p1    # "declaringClassName":Ljava/lang/String;
    .end local p2    # "declaringClassVersion":I
    .end local p3    # "fieldName":Ljava/lang/String;
    .end local p4    # "conversion":Lcom/sleepycat/persist/evolve/Conversion;
    throw v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .restart local v0    # "cls":Ljava/lang/Class;
    .restart local p1    # "declaringClassName":Ljava/lang/String;
    .restart local p2    # "declaringClassVersion":I
    .restart local p3    # "fieldName":Ljava/lang/String;
    .restart local p4    # "conversion":Lcom/sleepycat/persist/evolve/Conversion;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 124
    instance-of v0, p1, Lcom/sleepycat/persist/evolve/Converter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 125
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/evolve/Converter;

    .line 126
    .local v0, "o":Lcom/sleepycat/persist/evolve/Converter;
    iget-object v2, p0, Lcom/sleepycat/persist/evolve/Converter;->conversion:Lcom/sleepycat/persist/evolve/Conversion;

    iget-object v3, v0, Lcom/sleepycat/persist/evolve/Converter;->conversion:Lcom/sleepycat/persist/evolve/Conversion;

    invoke-interface {v2, v3}, Lcom/sleepycat/persist/evolve/Conversion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    invoke-super {p0, p1}, Lcom/sleepycat/persist/evolve/Mutation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 126
    :goto_0
    return v1

    .line 129
    .end local v0    # "o":Lcom/sleepycat/persist/evolve/Converter;
    :cond_1
    return v1
.end method

.method public getConversion()Lcom/sleepycat/persist/evolve/Conversion;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/Converter;->conversion:Lcom/sleepycat/persist/evolve/Conversion;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/Converter;->conversion:Lcom/sleepycat/persist/evolve/Conversion;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-super {p0}, Lcom/sleepycat/persist/evolve/Mutation;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Converter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/sleepycat/persist/evolve/Mutation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Conversion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/persist/evolve/Converter;->conversion:Lcom/sleepycat/persist/evolve/Conversion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
