.class public Ljavassist/tools/reflect/ClassMetaobject;
.super Ljava/lang/Object;
.source "ClassMetaobject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final methodPrefix:Ljava/lang/String; = "_m_"

.field static final methodPrefixLen:I = 0x3

.field private static final serialVersionUID:J = 0x1L

.field public static useContextClassLoader:Z


# instance fields
.field private constructors:[Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private javaClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private methods:[Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Ljavassist/tools/reflect/ClassMetaobject;->useContextClassLoader:Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    :try_start_0
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Ljavassist/tools/reflect/ClassMetaobject;->getClassObject(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Ljavassist/tools/reflect/ClassMetaobject;->javaClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    nop

    .line 86
    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/reflect/ClassMetaobject;->constructors:[Ljava/lang/reflect/Constructor;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/tools/reflect/ClassMetaobject;->methods:[Ljava/lang/reflect/Method;

    .line 88
    return-void

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, p1, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", useContextClassLoader: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v3, Ljavassist/tools/reflect/ClassMetaobject;->useContextClassLoader:Z

    .line 83
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getClassObject(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 103
    sget-boolean v0, Ljavassist/tools/reflect/ClassMetaobject;->useContextClassLoader:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 104
    return-object v0

    .line 106
    :cond_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static invoke(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "identifier"    # I
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 210
    .local v0, "allmethods":[Ljava/lang/reflect/Method;
    array-length v1, v0

    .line 211
    .local v1, "n":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_m_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "head":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 213
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 215
    :try_start_0
    aget-object v4, v0, v3

    invoke-virtual {v4, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 218
    :catch_0
    move-exception v4

    .line 219
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljavassist/tools/reflect/CannotInvokeException;

    invoke-direct {v5, v4}, Ljavassist/tools/reflect/CannotInvokeException;-><init>(Ljava/lang/IllegalAccessException;)V

    throw v5

    .line 216
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v4

    .line 217
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    throw v5

    .line 212
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Ljavassist/tools/reflect/CannotInvokeException;

    const-string v4, "cannot find a method"

    invoke-direct {v3, v4}, Ljavassist/tools/reflect/CannotInvokeException;-><init>(Ljava/lang/String;)V

    throw v3
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

    .line 97
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavassist/tools/reflect/ClassMetaobject;->getClassObject(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/reflect/ClassMetaobject;->javaClass:Ljava/lang/Class;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/reflect/ClassMetaobject;->constructors:[Ljava/lang/reflect/Constructor;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/tools/reflect/ClassMetaobject;->methods:[Ljava/lang/reflect/Method;

    .line 100
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

    .line 91
    iget-object v0, p0, Ljavassist/tools/reflect/ClassMetaobject;->javaClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 92
    return-void
.end method


# virtual methods
.method public final getJavaClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Ljavassist/tools/reflect/ClassMetaobject;->javaClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getMethod(I)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "identifier"    # I

    .line 302
    invoke-virtual {p0}, Ljavassist/tools/reflect/ClassMetaobject;->getReflectiveMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getMethodIndex(Ljava/lang/String;[Ljava/lang/Class;)I
    .locals 4
    .param p1, "originalName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 359
    .local p2, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljavassist/tools/reflect/ClassMetaobject;->getReflectiveMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 360
    .local v0, "mthds":[Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 361
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 362
    goto :goto_1

    .line 365
    :cond_0
    invoke-virtual {p0, v1}, Ljavassist/tools/reflect/ClassMetaobject;->getMethodName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v0, v1

    .line 366
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    return v1

    .line 360
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getMethodName(I)Ljava/lang/String;
    .locals 4
    .param p1, "identifier"    # I

    .line 310
    invoke-virtual {p0}, Ljavassist/tools/reflect/ClassMetaobject;->getReflectiveMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "mname":Ljava/lang/String;
    const/4 v1, 0x3

    .line 313
    .local v1, "j":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 314
    .local v1, "c":C
    const/16 v3, 0x30

    if-lt v1, v3, :cond_1

    const/16 v3, 0x39

    if-ge v3, v1, :cond_0

    .line 315
    goto :goto_1

    .line 316
    .end local v1    # "c":C
    :cond_0
    move v1, v2

    goto :goto_0

    .line 318
    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Ljavassist/tools/reflect/ClassMetaobject;->javaClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

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

    .line 327
    invoke-virtual {p0}, Ljavassist/tools/reflect/ClassMetaobject;->getReflectiveMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getReflectiveMethods()[Ljava/lang/reflect/Method;
    .locals 13

    .line 254
    iget-object v0, p0, Ljavassist/tools/reflect/ClassMetaobject;->methods:[Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 255
    return-object v0

    .line 257
    :cond_0
    invoke-virtual {p0}, Ljavassist/tools/reflect/ClassMetaobject;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    .line 258
    .local v0, "baseclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 259
    .local v1, "allmethods":[Ljava/lang/reflect/Method;
    array-length v2, v1

    .line 260
    .local v2, "n":I
    new-array v3, v2, [I

    .line 261
    .local v3, "index":[I
    const/4 v4, 0x0

    .line 262
    .local v4, "max":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_3

    .line 263
    aget-object v6, v1, v5

    .line 264
    .local v6, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    .line 265
    .local v7, "mname":Ljava/lang/String;
    const-string v8, "_m_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 266
    const/4 v8, 0x0

    .line 267
    .local v8, "k":I
    const/4 v9, 0x3

    .line 268
    .local v9, "j":I
    :goto_1
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 269
    .local v10, "c":C
    const/16 v11, 0x30

    if-gt v11, v10, :cond_1

    const/16 v12, 0x39

    if-gt v10, v12, :cond_1

    .line 270
    mul-int/lit8 v12, v8, 0xa

    add-int/2addr v12, v10

    add-int/lit8 v8, v12, -0x30

    .line 267
    .end local v10    # "c":C
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 275
    .end local v9    # "j":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    aput v8, v3, v5

    .line 276
    if-le v8, v4, :cond_2

    .line 277
    move v4, v8

    .line 262
    .end local v6    # "m":Ljava/lang/reflect/Method;
    .end local v7    # "mname":Ljava/lang/String;
    .end local v8    # "k":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 281
    .end local v5    # "i":I
    :cond_3
    new-array v5, v4, [Ljava/lang/reflect/Method;

    iput-object v5, p0, Ljavassist/tools/reflect/ClassMetaobject;->methods:[Ljava/lang/reflect/Method;

    .line 282
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v2, :cond_5

    .line 283
    aget v6, v3, v5

    if-lez v6, :cond_4

    .line 284
    iget-object v6, p0, Ljavassist/tools/reflect/ClassMetaobject;->methods:[Ljava/lang/reflect/Method;

    aget v7, v3, v5

    add-int/lit8 v7, v7, -0x1

    aget-object v8, v1, v5

    aput-object v8, v6, v7

    .line 282
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 286
    .end local v5    # "i":I
    :cond_5
    iget-object v5, p0, Ljavassist/tools/reflect/ClassMetaobject;->methods:[Ljava/lang/reflect/Method;

    return-object v5
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

    .line 335
    invoke-virtual {p0}, Ljavassist/tools/reflect/ClassMetaobject;->getReflectiveMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final isInstance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Ljavassist/tools/reflect/ClassMetaobject;->javaClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/tools/reflect/CannotCreateException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Ljavassist/tools/reflect/ClassMetaobject;->constructors:[Ljava/lang/reflect/Constructor;

    array-length v0, v0

    .line 139
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 141
    :try_start_0
    iget-object v2, p0, Ljavassist/tools/reflect/ClassMetaobject;->constructors:[Ljava/lang/reflect/Constructor;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljavassist/tools/reflect/CannotCreateException;

    invoke-direct {v3, v2}, Ljavassist/tools/reflect/CannotCreateException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 149
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljavassist/tools/reflect/CannotCreateException;

    invoke-direct {v3, v2}, Ljavassist/tools/reflect/CannotCreateException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 146
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Ljavassist/tools/reflect/CannotCreateException;

    invoke-direct {v3, v2}, Ljavassist/tools/reflect/CannotCreateException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 143
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v2

    .line 154
    nop

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljavassist/tools/reflect/CannotCreateException;

    const-string v2, "no constructor matches"

    invoke-direct {v1, v2}, Ljavassist/tools/reflect/CannotCreateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public trapFieldRead(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Ljavassist/tools/reflect/ClassMetaobject;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    .line 170
    .local v0, "jc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 173
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

    .line 188
    invoke-virtual {p0}, Ljavassist/tools/reflect/ClassMetaobject;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    .line 190
    .local v0, "jc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    nop

    .line 198
    return-void

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public trapMethodcall(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "identifier"    # I
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 238
    :try_start_0
    invoke-virtual {p0}, Ljavassist/tools/reflect/ClassMetaobject;->getReflectiveMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 239
    .local v0, "m":[Ljava/lang/reflect/Method;
    aget-object v1, v0, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 244
    .end local v0    # "m":[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljavassist/tools/reflect/CannotInvokeException;

    invoke-direct {v1, v0}, Ljavassist/tools/reflect/CannotInvokeException;-><init>(Ljava/lang/IllegalAccessException;)V

    throw v1

    .line 241
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method
