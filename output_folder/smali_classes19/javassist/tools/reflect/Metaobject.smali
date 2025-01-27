.class public Ljavassist/tools/reflect/Metaobject;
.super Ljava/lang/Object;
.source "Metaobject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected baseobject:Ljavassist/tools/reflect/Metalevel;

.field protected classmetaobject:Ljavassist/tools/reflect/ClassMetaobject;

.field protected methods:[Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/tools/reflect/Metaobject;->baseobject:Ljavassist/tools/reflect/Metalevel;

    .line 76
    iput-object v0, p0, Ljavassist/tools/reflect/Metaobject;->classmetaobject:Ljavassist/tools/reflect/ClassMetaobject;

    .line 77
    iput-object v0, p0, Ljavassist/tools/reflect/Metaobject;->methods:[Ljava/lang/reflect/Method;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "self"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    move-object v0, p1

    check-cast v0, Ljavassist/tools/reflect/Metalevel;

    iput-object v0, p0, Ljavassist/tools/reflect/Metaobject;->baseobject:Ljavassist/tools/reflect/Metalevel;

    .line 65
    invoke-interface {v0}, Ljavassist/tools/reflect/Metalevel;->_getClass()Ljavassist/tools/reflect/ClassMetaobject;

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/reflect/Metaobject;->classmetaobject:Ljavassist/tools/reflect/ClassMetaobject;

    .line 66
    invoke-virtual {v0}, Ljavassist/tools/reflect/ClassMetaobject;->getReflectiveMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/reflect/Metaobject;->methods:[Ljava/lang/reflect/Method;

    .line 67
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/tools/reflect/Metalevel;

    iput-object v0, p0, Ljavassist/tools/reflect/Metaobject;->baseobject:Ljavassist/tools/reflect/Metalevel;

    .line 88
    invoke-interface {v0}, Ljavassist/tools/reflect/Metalevel;->_getClass()Ljavassist/tools/reflect/ClassMetaobject;

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/reflect/Metaobject;->classmetaobject:Ljavassist/tools/reflect/ClassMetaobject;

    .line 89
    invoke-virtual {v0}, Ljavassist/tools/reflect/ClassMetaobject;->getReflectiveMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/reflect/Metaobject;->methods:[Ljava/lang/reflect/Method;

    .line 90
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Ljavassist/tools/reflect/Metaobject;->baseobject:Ljavassist/tools/reflect/Metalevel;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 82
    return-void
.end method


# virtual methods
.method public final getClassMetaobject()Ljavassist/tools/reflect/ClassMetaobject;
    .locals 1

    .line 98
    iget-object v0, p0, Ljavassist/tools/reflect/Metaobject;->classmetaobject:Ljavassist/tools/reflect/ClassMetaobject;

    return-object v0
.end method

.method public final getMethodName(I)Ljava/lang/String;
    .locals 4
    .param p1, "identifier"    # I

    .line 127
    iget-object v0, p0, Ljavassist/tools/reflect/Metaobject;->methods:[Ljava/lang/reflect/Method;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "mname":Ljava/lang/String;
    const/4 v1, 0x3

    .line 130
    .local v1, "j":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 131
    .local v1, "c":C
    const/16 v3, 0x30

    if-lt v1, v3, :cond_1

    const/16 v3, 0x39

    if-ge v3, v1, :cond_0

    .line 132
    goto :goto_1

    .line 133
    .end local v1    # "c":C
    :cond_0
    move v1, v2

    goto :goto_0

    .line 135
    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getObject()Ljava/lang/Object;
    .locals 1

    .line 105
    iget-object v0, p0, Ljavassist/tools/reflect/Metaobject;->baseobject:Ljavassist/tools/reflect/Metalevel;

    return-object v0
.end method

.method public final getParameterTypes(I)[Ljava/lang/Class;
    .locals 1
    .param p1, "identifier"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Ljavassist/tools/reflect/Metaobject;->methods:[Ljava/lang/reflect/Method;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getReturnType(I)Ljava/lang/Class;
    .locals 1
    .param p1, "identifier"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Ljavassist/tools/reflect/Metaobject;->methods:[Ljava/lang/reflect/Method;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final setObject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "self"    # Ljava/lang/Object;

    .line 114
    move-object v0, p1

    check-cast v0, Ljavassist/tools/reflect/Metalevel;

    iput-object v0, p0, Ljavassist/tools/reflect/Metaobject;->baseobject:Ljavassist/tools/reflect/Metalevel;

    .line 115
    invoke-interface {v0}, Ljavassist/tools/reflect/Metalevel;->_getClass()Ljavassist/tools/reflect/ClassMetaobject;

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/reflect/Metaobject;->classmetaobject:Ljavassist/tools/reflect/ClassMetaobject;

    .line 116
    invoke-virtual {v0}, Ljavassist/tools/reflect/ClassMetaobject;->getReflectiveMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/reflect/Metaobject;->methods:[Ljava/lang/reflect/Method;

    .line 119
    iget-object v0, p0, Ljavassist/tools/reflect/Metaobject;->baseobject:Ljavassist/tools/reflect/Metalevel;

    invoke-interface {v0, p0}, Ljavassist/tools/reflect/Metalevel;->_setMetaobject(Ljavassist/tools/reflect/Metaobject;)V

    .line 120
    return-void
.end method

.method public trapFieldRead(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Ljavassist/tools/reflect/Metaobject;->getClassMetaobject()Ljavassist/tools/reflect/ClassMetaobject;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/tools/reflect/ClassMetaobject;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    .line 165
    .local v0, "jc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/tools/reflect/Metaobject;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public trapFieldWrite(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 183
    invoke-virtual {p0}, Ljavassist/tools/reflect/Metaobject;->getClassMetaobject()Ljavassist/tools/reflect/ClassMetaobject;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/tools/reflect/ClassMetaobject;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    .line 185
    .local v0, "jc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/tools/reflect/Metaobject;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    nop

    .line 193
    return-void

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 187
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public trapMethodcall(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "identifier"    # I
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 232
    :try_start_0
    iget-object v0, p0, Ljavassist/tools/reflect/Metaobject;->methods:[Ljava/lang/reflect/Method;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Ljavassist/tools/reflect/Metaobject;->getObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljavassist/tools/reflect/CannotInvokeException;

    invoke-direct {v1, v0}, Ljavassist/tools/reflect/CannotInvokeException;-><init>(Ljava/lang/IllegalAccessException;)V

    throw v1

    .line 234
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method
