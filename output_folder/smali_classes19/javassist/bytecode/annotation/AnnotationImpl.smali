.class public Ljavassist/bytecode/annotation/AnnotationImpl;
.super Ljava/lang/Object;
.source "AnnotationImpl.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final JDK_ANNOTATION_CLASS_NAME:Ljava/lang/String; = "java.lang.annotation.Annotation"

.field private static JDK_ANNOTATION_TYPE_METHOD:Ljava/lang/reflect/Method;


# instance fields
.field private annotation:Ljavassist/bytecode/annotation/Annotation;

.field private transient annotationType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private transient cachedHashCode:I

.field private classLoader:Ljava/lang/ClassLoader;

.field private pool:Ljavassist/ClassPool;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    const/4 v0, 0x0

    sput-object v0, Ljavassist/bytecode/annotation/AnnotationImpl;->JDK_ANNOTATION_TYPE_METHOD:Ljava/lang/reflect/Method;

    .line 51
    :try_start_0
    const-string v1, "java.lang.annotation.Annotation"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 52
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "annotationType"

    move-object v3, v0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ljavassist/bytecode/annotation/AnnotationImpl;->JDK_ANNOTATION_TYPE_METHOD:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 57
    :goto_0
    return-void
.end method

.method private constructor <init>(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "a"    # Ljavassist/bytecode/annotation/Annotation;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/high16 v0, -0x80000000

    iput v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->cachedHashCode:I

    .line 78
    iput-object p1, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    .line 79
    iput-object p2, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->pool:Ljavassist/ClassPool;

    .line 80
    iput-object p3, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->classLoader:Ljava/lang/ClassLoader;

    .line 81
    return-void
.end method

.method private static arrayHashCode(Ljava/lang/Object;)I
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;

    .line 294
    if-nez p0, :cond_0

    .line 295
    const/4 v0, 0x0

    return v0

    .line 297
    :cond_0
    const/4 v0, 0x1

    .line 299
    .local v0, "result":I
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    .line 300
    .local v1, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 301
    const/4 v3, 0x0

    .line 302
    .local v3, "elementHashCode":I
    aget-object v4, v1, v2

    if-eqz v4, :cond_1

    .line 303
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 304
    :cond_1
    mul-int/lit8 v4, v0, 0x1f

    add-int v0, v4, v3

    .line 300
    .end local v3    # "elementHashCode":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method private checkEquals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 238
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 239
    return v0

    .line 242
    :cond_0
    instance-of v1, p1, Ljava/lang/reflect/Proxy;

    if-eqz v1, :cond_1

    .line 243
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .line 244
    .local v1, "ih":Ljava/lang/reflect/InvocationHandler;
    instance-of v2, v1, Ljavassist/bytecode/annotation/AnnotationImpl;

    if-eqz v2, :cond_1

    .line 245
    move-object v0, v1

    check-cast v0, Ljavassist/bytecode/annotation/AnnotationImpl;

    .line 246
    .local v0, "other":Ljavassist/bytecode/annotation/AnnotationImpl;
    iget-object v2, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    iget-object v3, v0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {v2, v3}, Ljavassist/bytecode/annotation/Annotation;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 250
    .end local v0    # "other":Ljavassist/bytecode/annotation/AnnotationImpl;
    .end local v1    # "ih":Ljava/lang/reflect/InvocationHandler;
    :cond_1
    sget-object v1, Ljavassist/bytecode/annotation/AnnotationImpl;->JDK_ANNOTATION_TYPE_METHOD:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 251
    .local v1, "otherAnnotationType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljavassist/bytecode/annotation/AnnotationImpl;->getAnnotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 252
    return v0

    .line 254
    :cond_2
    iget-object v2, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotationType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 255
    .local v2, "methods":[Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_7

    .line 256
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {v5, v4}, Ljavassist/bytecode/annotation/Annotation;->getMemberValue(Ljava/lang/String;)Ljavassist/bytecode/annotation/MemberValue;

    move-result-object v5

    .line 260
    .local v5, "mv":Ljavassist/bytecode/annotation/MemberValue;
    const/4 v6, 0x0

    .line 261
    .local v6, "value":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 263
    .local v7, "otherValue":Ljava/lang/Object;
    if-eqz v5, :cond_3

    .line 264
    :try_start_0
    iget-object v8, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->classLoader:Ljava/lang/ClassLoader;

    iget-object v9, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->pool:Ljavassist/ClassPool;

    aget-object v10, v2, v3

    invoke-virtual {v5, v8, v9, v10}, Ljavassist/bytecode/annotation/MemberValue;->getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    goto :goto_1

    .line 272
    :catch_0
    move-exception v0

    goto :goto_2

    .line 269
    :catch_1
    move-exception v0

    goto :goto_3

    .line 265
    :cond_3
    :goto_1
    if-nez v6, :cond_4

    .line 266
    aget-object v8, v2, v3

    invoke-direct {p0, v4, v8}, Ljavassist/bytecode/annotation/AnnotationImpl;->getDefault(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 267
    :cond_4
    aget-object v8, v2, v3

    new-array v9, v0, [Ljava/lang/Object;

    invoke-virtual {v8, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    .line 274
    nop

    .line 276
    if-nez v6, :cond_5

    if-eqz v7, :cond_5

    .line 277
    return v0

    .line 278
    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 279
    return v0

    .line 255
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "mv":Ljavassist/bytecode/annotation/MemberValue;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "otherValue":Ljava/lang/Object;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "mv":Ljavassist/bytecode/annotation/MemberValue;
    .restart local v6    # "value":Ljava/lang/Object;
    .restart local v7    # "otherValue":Ljava/lang/Object;
    :goto_2
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error retrieving value "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for annotation "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {v10}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 270
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_3
    throw v0

    .line 282
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "mv":Ljavassist/bytecode/annotation/MemberValue;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "otherValue":Ljava/lang/Object;
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method private getAnnotationType()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotationType:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {v0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "typeName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotationType:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/NoClassDefFoundError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading annotation class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    .line 106
    .local v2, "error":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/NoClassDefFoundError;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 107
    throw v2

    .line 110
    .end local v0    # "typeName":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v2    # "error":Ljava/lang/NoClassDefFoundError;
    :cond_0
    :goto_0
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotationType:Ljava/lang/Class;

    return-object v0
.end method

.method private getDefault(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {v0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "classname":Ljava/lang/String;
    iget-object v1, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->pool:Ljavassist/ClassPool;

    if-eqz v1, :cond_1

    .line 160
    :try_start_0
    invoke-virtual {v1, v0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    .line 161
    .local v1, "cc":Ljavassist/CtClass;
    invoke-virtual {v1}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    .line 162
    .local v2, "cf":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v2, p1}, Ljavassist/bytecode/ClassFile;->getMethod(Ljava/lang/String;)Ljavassist/bytecode/MethodInfo;

    move-result-object v3

    .line 163
    .local v3, "minfo":Ljavassist/bytecode/MethodInfo;
    if-eqz v3, :cond_0

    .line 164
    const-string v4, "AnnotationDefault"

    .line 166
    invoke-virtual {v3, v4}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/AnnotationDefaultAttribute;

    .line 167
    .local v4, "ainfo":Ljavassist/bytecode/AnnotationDefaultAttribute;
    if-eqz v4, :cond_0

    .line 168
    invoke-virtual {v4}, Ljavassist/bytecode/AnnotationDefaultAttribute;->getDefaultValue()Ljavassist/bytecode/annotation/MemberValue;

    move-result-object v5

    .line 169
    .local v5, "mv":Ljavassist/bytecode/annotation/MemberValue;
    iget-object v6, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->classLoader:Ljava/lang/ClassLoader;

    iget-object v7, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->pool:Ljavassist/ClassPool;

    invoke-virtual {v5, v6, v7, p2}, Ljavassist/bytecode/annotation/MemberValue;->getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 176
    .end local v1    # "cc":Ljavassist/CtClass;
    .end local v2    # "cf":Ljavassist/bytecode/ClassFile;
    .end local v3    # "minfo":Ljavassist/bytecode/MethodInfo;
    .end local v4    # "ainfo":Ljavassist/bytecode/AnnotationDefaultAttribute;
    .end local v5    # "mv":Ljavassist/bytecode/annotation/MemberValue;
    :cond_0
    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljavassist/NotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find a class file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    .end local v1    # "e":Ljavassist/NotFoundException;
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no default value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static make(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/annotation/Annotation;)Ljava/lang/Object;
    .locals 3
    .param p0, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .param p3, "anon"    # Ljavassist/bytecode/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavassist/ClassPool;",
            "Ljavassist/bytecode/annotation/Annotation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 73
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljavassist/bytecode/annotation/AnnotationImpl;

    invoke-direct {v0, p3, p2, p0}, Ljavassist/bytecode/annotation/AnnotationImpl;-><init>(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;Ljava/lang/ClassLoader;)V

    .line 74
    .local v0, "handler":Ljavassist/bytecode/annotation/AnnotationImpl;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAnnotation()Ljavassist/bytecode/annotation/Annotation;
    .locals 1

    .line 119
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {v0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 11

    .line 188
    iget v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->cachedHashCode:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_5

    .line 189
    const/4 v0, 0x0

    .line 192
    .local v0, "hashCode":I
    invoke-direct {p0}, Ljavassist/bytecode/annotation/AnnotationImpl;->getAnnotationType()Ljava/lang/Class;

    .line 194
    iget-object v1, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotationType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 195
    .local v1, "methods":[Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 196
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 200
    .local v4, "valueHashCode":I
    iget-object v5, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {v5, v3}, Ljavassist/bytecode/annotation/Annotation;->getMemberValue(Ljava/lang/String;)Ljavassist/bytecode/annotation/MemberValue;

    move-result-object v5

    .line 201
    .local v5, "mv":Ljavassist/bytecode/annotation/MemberValue;
    const/4 v6, 0x0

    .line 203
    .local v6, "value":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 204
    :try_start_0
    iget-object v7, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->classLoader:Ljava/lang/ClassLoader;

    iget-object v8, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->pool:Ljavassist/ClassPool;

    aget-object v9, v1, v2

    invoke-virtual {v5, v7, v8, v9}, Ljavassist/bytecode/annotation/MemberValue;->getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    goto :goto_1

    .line 211
    :catch_0
    move-exception v7

    goto :goto_2

    .line 208
    :catch_1
    move-exception v7

    goto :goto_3

    .line 205
    :cond_0
    :goto_1
    if-nez v6, :cond_1

    .line 206
    aget-object v7, v1, v2

    invoke-direct {p0, v3, v7}, Ljavassist/bytecode/annotation/AnnotationImpl;->getDefault(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    goto :goto_4

    .line 212
    .local v7, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error retrieving value "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for annotation "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {v10}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 209
    .local v7, "e":Ljava/lang/RuntimeException;
    :goto_3
    throw v7

    .line 213
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_4
    nop

    .line 216
    if-eqz v6, :cond_3

    .line 217
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 218
    invoke-static {v6}, Ljavassist/bytecode/annotation/AnnotationImpl;->arrayHashCode(Ljava/lang/Object;)I

    move-result v4

    goto :goto_5

    .line 220
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 222
    :cond_3
    :goto_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    mul-int/lit8 v7, v7, 0x7f

    xor-int/2addr v7, v4

    add-int/2addr v0, v7

    .line 195
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "valueHashCode":I
    .end local v5    # "mv":Ljavassist/bytecode/annotation/MemberValue;
    .end local v6    # "value":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .end local v2    # "i":I
    :cond_4
    iput v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->cachedHashCode:I

    .line 227
    .end local v0    # "hashCode":I
    .end local v1    # "methods":[Ljava/lang/reflect/Method;
    :cond_5
    iget v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->cachedHashCode:I

    return v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 133
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 135
    const-string v1, "equals"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const/4 v1, 0x0

    aget-object v1, p3, v1

    .line 137
    .local v1, "obj":Ljava/lang/Object;
    invoke-direct {p0, v1}, Ljavassist/bytecode/annotation/AnnotationImpl;->checkEquals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 139
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_0
    const-string v1, "toString"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {v1}, Ljavassist/bytecode/annotation/Annotation;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 141
    :cond_1
    const-string v1, "hashCode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/AnnotationImpl;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 144
    :cond_2
    const-string v1, "annotationType"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_3

    .line 146
    invoke-direct {p0}, Ljavassist/bytecode/annotation/AnnotationImpl;->getAnnotationType()Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 148
    :cond_3
    iget-object v1, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/annotation/Annotation;->getMemberValue(Ljava/lang/String;)Ljavassist/bytecode/annotation/MemberValue;

    move-result-object v1

    .line 149
    .local v1, "mv":Ljavassist/bytecode/annotation/MemberValue;
    if-nez v1, :cond_4

    .line 150
    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/AnnotationImpl;->getDefault(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 151
    :cond_4
    iget-object v2, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->classLoader:Ljava/lang/ClassLoader;

    iget-object v3, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->pool:Ljavassist/ClassPool;

    invoke-virtual {v1, v2, v3, p2}, Ljavassist/bytecode/annotation/MemberValue;->getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
