.class public Ljavassist/SerialVersionUID;
.super Ljava/lang/Object;
.source "SerialVersionUID.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDefault(Ljavassist/CtClass;)J
    .locals 19
    .param p0, "clazz"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 85
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 87
    .local v1, "out":Ljava/io/DataOutputStream;
    invoke-virtual/range {p0 .. p0}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    .line 90
    .local v2, "classFile":Ljavassist/bytecode/ClassFile;
    invoke-static/range {p0 .. p0}, Ljavassist/SerialVersionUID;->javaName(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "javaName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Ljavassist/CtClass;->getDeclaredMethods()[Ljavassist/CtMethod;

    move-result-object v4

    .line 96
    .local v4, "methods":[Ljavassist/CtMethod;
    invoke-virtual/range {p0 .. p0}, Ljavassist/CtClass;->getModifiers()I

    move-result v5

    .line 97
    .local v5, "classMods":I
    and-int/lit16 v6, v5, 0x200

    if-eqz v6, :cond_1

    .line 98
    array-length v6, v4

    if-lez v6, :cond_0

    .line 99
    or-int/lit16 v5, v5, 0x400

    goto :goto_0

    .line 101
    :cond_0
    and-int/lit16 v5, v5, -0x401

    .line 103
    :cond_1
    :goto_0
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 106
    invoke-virtual {v2}, Ljavassist/bytecode/ClassFile;->getInterfaces()[Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "interfaces":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_2

    .line 108
    aget-object v8, v6, v7

    invoke-static {v8}, Ljavassist/SerialVersionUID;->javaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 107
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 110
    .end local v7    # "i":I
    :cond_2
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 111
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    array-length v8, v6

    if-ge v7, v8, :cond_3

    .line 112
    aget-object v8, v6, v7

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 111
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 115
    .end local v7    # "i":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljavassist/CtClass;->getDeclaredFields()[Ljavassist/CtField;

    move-result-object v7

    .line 116
    .local v7, "fields":[Ljavassist/CtField;
    new-instance v8, Ljavassist/SerialVersionUID$1;

    invoke-direct {v8}, Ljavassist/SerialVersionUID$1;-><init>()V

    invoke-static {v7, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 123
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    array-length v9, v7

    if-ge v8, v9, :cond_6

    .line 124
    aget-object v9, v7, v8

    .line 125
    .local v9, "field":Ljavassist/CtField;
    invoke-virtual {v9}, Ljavassist/CtField;->getModifiers()I

    move-result v10

    .line 126
    .local v10, "mods":I
    and-int/lit8 v11, v10, 0x2

    if-eqz v11, :cond_4

    and-int/lit16 v11, v10, 0x88

    if-nez v11, :cond_5

    .line 128
    :cond_4
    invoke-virtual {v9}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 130
    invoke-virtual {v9}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v11

    invoke-virtual {v11}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 123
    .end local v9    # "field":Ljavassist/CtField;
    .end local v10    # "mods":I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 135
    .end local v8    # "i":I
    :cond_6
    invoke-virtual {v2}, Ljavassist/bytecode/ClassFile;->getStaticInitializer()Ljavassist/bytecode/MethodInfo;

    move-result-object v8

    const/16 v9, 0x8

    if-eqz v8, :cond_7

    .line 136
    const-string v8, "<clinit>"

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 138
    const-string v8, "()V"

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 142
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljavassist/CtClass;->getDeclaredConstructors()[Ljavassist/CtConstructor;

    move-result-object v8

    .line 143
    .local v8, "constructors":[Ljavassist/CtConstructor;
    new-instance v10, Ljavassist/SerialVersionUID$2;

    invoke-direct {v10}, Ljavassist/SerialVersionUID$2;-><init>()V

    invoke-static {v8, v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 151
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    array-length v11, v8

    const/16 v12, 0x2e

    const/16 v13, 0x2f

    if-ge v10, v11, :cond_9

    .line 152
    aget-object v11, v8, v10

    .line 153
    .local v11, "constructor":Ljavassist/CtConstructor;
    invoke-virtual {v11}, Ljavassist/CtConstructor;->getModifiers()I

    move-result v14

    .line 154
    .local v14, "mods":I
    and-int/lit8 v15, v14, 0x2

    if-nez v15, :cond_8

    .line 155
    const-string v15, "<init>"

    invoke-virtual {v1, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 157
    invoke-virtual {v11}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v15

    .line 158
    invoke-virtual {v15}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v13, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    .line 157
    invoke-virtual {v1, v12}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 151
    .end local v11    # "constructor":Ljavassist/CtConstructor;
    .end local v14    # "mods":I
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 163
    .end local v10    # "i":I
    :cond_9
    new-instance v10, Ljavassist/SerialVersionUID$3;

    invoke-direct {v10}, Ljavassist/SerialVersionUID$3;-><init>()V

    invoke-static {v4, v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 175
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_5
    array-length v11, v4

    if-ge v10, v11, :cond_b

    .line 176
    aget-object v11, v4, v10

    .line 177
    .local v11, "method":Ljavassist/CtMethod;
    invoke-virtual {v11}, Ljavassist/CtMethod;->getModifiers()I

    move-result v14

    and-int/lit16 v14, v14, 0xd3f

    .line 182
    .restart local v14    # "mods":I
    and-int/lit8 v15, v14, 0x2

    if-nez v15, :cond_a

    .line 183
    invoke-virtual {v11}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v1, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 185
    invoke-virtual {v11}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v15

    .line 186
    invoke-virtual {v15}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v13, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v15

    .line 185
    invoke-virtual {v1, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 175
    .end local v11    # "method":Ljavassist/CtMethod;
    .end local v14    # "mods":I
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 191
    .end local v10    # "i":I
    :cond_b
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 192
    const-string v10, "SHA"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 193
    .local v10, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v11

    .line 194
    .local v11, "digested":[B
    const-wide/16 v12, 0x0

    .line 195
    .local v12, "hash":J
    array-length v14, v11

    invoke-static {v14, v9}, Ljava/lang/Math;->min(II)I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    .local v14, "i":I
    :goto_6
    if-ltz v14, :cond_c

    .line 196
    shl-long v15, v12, v9

    aget-byte v9, v11, v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v9, v9, 0xff

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .local v17, "bout":Ljava/io/ByteArrayOutputStream;
    .local v18, "out":Ljava/io/DataOutputStream;
    int-to-long v0, v9

    or-long v12, v15, v0

    .line 195
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    const/16 v9, 0x8

    goto :goto_6

    .line 198
    .end local v14    # "i":I
    .end local v17    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "out":Ljava/io/DataOutputStream;
    .restart local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    :cond_c
    return-wide v12

    .line 203
    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .end local v2    # "classFile":Ljavassist/bytecode/ClassFile;
    .end local v3    # "javaName":Ljava/lang/String;
    .end local v4    # "methods":[Ljavassist/CtMethod;
    .end local v5    # "classMods":I
    .end local v6    # "interfaces":[Ljava/lang/String;
    .end local v7    # "fields":[Ljavassist/CtField;
    .end local v8    # "constructors":[Ljavassist/CtConstructor;
    .end local v10    # "digest":Ljava/security/MessageDigest;
    .end local v11    # "digested":[B
    .end local v12    # "hash":J
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 200
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static isSerializable(Ljavassist/CtClass;)Z
    .locals 2
    .param p0, "clazz"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    .line 72
    .local v0, "pool":Ljavassist/ClassPool;
    const-string v1, "java.io.Serializable"

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result v1

    return v1
.end method

.method private static javaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 213
    invoke-static {p0}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static javaName(Ljavassist/CtClass;)Ljava/lang/String;
    .locals 1
    .param p0, "clazz"    # Ljavassist/CtClass;

    .line 209
    invoke-static {p0}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setSerialVersionUID(Ljavassist/CtClass;)V
    .locals 4
    .param p0, "clazz"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 48
    const-string v0, "serialVersionUID"

    :try_start_0
    invoke-virtual {p0, v0}, Ljavassist/CtClass;->getDeclaredField(Ljava/lang/String;)Ljavassist/CtField;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-void

    .line 51
    :catch_0
    move-exception v1

    .line 54
    invoke-static {p0}, Ljavassist/SerialVersionUID;->isSerializable(Ljavassist/CtClass;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    return-void

    .line 58
    :cond_0
    new-instance v1, Ljavassist/CtField;

    sget-object v2, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    invoke-direct {v1, v2, v0, p0}, Ljavassist/CtField;-><init>(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)V

    move-object v0, v1

    .line 60
    .local v0, "field":Ljavassist/CtField;
    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Ljavassist/CtField;->setModifiers(I)V

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljavassist/SerialVersionUID;->calculateDefault(Ljavassist/CtClass;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavassist/CtClass;->addField(Ljavassist/CtField;Ljava/lang/String;)V

    .line 63
    return-void
.end method
