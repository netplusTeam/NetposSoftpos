.class public Ljavassist/bytecode/annotation/ArrayMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "ArrayMemberValue.java"


# instance fields
.field type:Ljavassist/bytecode/annotation/MemberValue;

.field values:[Ljavassist/bytecode/annotation/MemberValue;


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 39
    const/16 v0, 0x5b

    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->type:Ljavassist/bytecode/annotation/MemberValue;

    .line 41
    iput-object v0, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/annotation/MemberValue;Ljavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "t"    # Ljavassist/bytecode/annotation/MemberValue;
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 50
    const/16 v0, 0x5b

    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 51
    iput-object p1, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->type:Ljavassist/bytecode/annotation/MemberValue;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    .line 53
    return-void
.end method


# virtual methods
.method public accept(Ljavassist/bytecode/annotation/MemberValueVisitor;)V
    .locals 0
    .param p1, "visitor"    # Ljavassist/bytecode/annotation/MemberValueVisitor;

    .line 149
    invoke-interface {p1, p0}, Ljavassist/bytecode/annotation/MemberValueVisitor;->visitArrayMemberValue(Ljavassist/bytecode/annotation/ArrayMemberValue;)V

    .line 150
    return-void
.end method

.method getType(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->type:Ljavassist/bytecode/annotation/MemberValue;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Ljavassist/bytecode/annotation/MemberValue;->getType(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "a":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 84
    .end local v0    # "a":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/ClassNotFoundException;

    const-string v1, "no array type specified"

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()Ljavassist/bytecode/annotation/MemberValue;
    .locals 1

    .line 96
    iget-object v0, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->type:Ljavassist/bytecode/annotation/MemberValue;

    return-object v0
.end method

.method getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 5
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .param p3, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    if-eqz v0, :cond_3

    .line 63
    array-length v0, v0

    .line 65
    .local v0, "size":I
    iget-object v1, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->type:Ljavassist/bytecode/annotation/MemberValue;

    if-nez v1, :cond_1

    .line 66
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 67
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance v2, Ljava/lang/ClassNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broken array type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 69
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {v1, p1}, Ljavassist/bytecode/annotation/MemberValue;->getType(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 74
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 75
    .local v2, "a":Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 76
    iget-object v4, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1, p2, p3}, Ljavassist/bytecode/annotation/MemberValue;->getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 78
    .end local v3    # "i":I
    :cond_2
    return-object v2

    .line 60
    .end local v0    # "size":I
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "a":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no array elements found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()[Ljavassist/bytecode/annotation/MemberValue;
    .locals 1

    .line 103
    iget-object v0, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    return-object v0
.end method

.method public setValue([Ljavassist/bytecode/annotation/MemberValue;)V
    .locals 1
    .param p1, "elements"    # [Ljavassist/bytecode/annotation/MemberValue;

    .line 110
    iput-object p1, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    .line 111
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->type:Ljavassist/bytecode/annotation/MemberValue;

    .line 113
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    if-eqz v1, :cond_1

    .line 122
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 123
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 125
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "i":I
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Ljavassist/bytecode/annotation/AnnotationsWriter;)V
    .locals 3
    .param p1, "writer"    # Ljavassist/bytecode/annotation/AnnotationsWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    .line 139
    .local v0, "num":I
    :goto_0
    invoke-virtual {p1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->arrayValue(I)V

    .line 140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 141
    iget-object v2, p0, Ljavassist/bytecode/annotation/ArrayMemberValue;->values:[Ljavassist/bytecode/annotation/MemberValue;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljavassist/bytecode/annotation/MemberValue;->write(Ljavassist/bytecode/annotation/AnnotationsWriter;)V

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
