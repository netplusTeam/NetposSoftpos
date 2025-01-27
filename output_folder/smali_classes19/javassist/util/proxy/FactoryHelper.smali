.class public Ljavassist/util/proxy/FactoryHelper;
.super Ljava/lang/Object;
.source "FactoryHelper.java"


# static fields
.field public static final dataSize:[I

.field public static final primitiveTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final unwarpMethods:[Ljava/lang/String;

.field public static final unwrapDesc:[Ljava/lang/String;

.field public static final wrapperDesc:[Ljava/lang/String;

.field public static final wrapperTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 53
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Ljavassist/util/proxy/FactoryHelper;->primitiveTypes:[Ljava/lang/Class;

    .line 61
    const-string v3, "java.lang.Boolean"

    const-string v4, "java.lang.Byte"

    const-string v5, "java.lang.Character"

    const-string v6, "java.lang.Short"

    const-string v7, "java.lang.Integer"

    const-string v8, "java.lang.Long"

    const-string v9, "java.lang.Float"

    const-string v10, "java.lang.Double"

    const-string v11, "java.lang.Void"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavassist/util/proxy/FactoryHelper;->wrapperTypes:[Ljava/lang/String;

    .line 70
    const-string v3, "(Z)V"

    const-string v4, "(B)V"

    const-string v5, "(C)V"

    const-string v6, "(S)V"

    const-string v7, "(I)V"

    const-string v8, "(J)V"

    const-string v9, "(F)V"

    const-string v10, "(D)V"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavassist/util/proxy/FactoryHelper;->wrapperDesc:[Ljava/lang/String;

    .line 81
    const-string v3, "booleanValue"

    const-string v4, "byteValue"

    const-string v5, "charValue"

    const-string v6, "shortValue"

    const-string v7, "intValue"

    const-string v8, "longValue"

    const-string v9, "floatValue"

    const-string v10, "doubleValue"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavassist/util/proxy/FactoryHelper;->unwarpMethods:[Ljava/lang/String;

    .line 90
    const-string v3, "()Z"

    const-string v4, "()B"

    const-string v5, "()C"

    const-string v6, "()S"

    const-string v7, "()I"

    const-string v8, "()J"

    const-string v9, "()F"

    const-string v10, "()D"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavassist/util/proxy/FactoryHelper;->unwrapDesc:[Ljava/lang/String;

    .line 98
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljavassist/util/proxy/FactoryHelper;->dataSize:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static toBytecode(Ljavassist/bytecode/ClassFile;)[B
    .locals 3
    .param p0, "cf"    # Ljavassist/bytecode/ClassFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 182
    .local v0, "barray":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 184
    .local v1, "out":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p0, v1}, Ljavassist/bytecode/ClassFile;->write(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 188
    nop

    .line 190
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 187
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 188
    throw v2
.end method

.method public static toClass(Ljavassist/bytecode/ClassFile;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 2
    .param p0, "cf"    # Ljavassist/bytecode/ClassFile;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "domain"    # Ljava/security/ProtectionDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ClassFile;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 150
    .local p1, "neighbor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljavassist/util/proxy/FactoryHelper;->toBytecode(Ljavassist/bytecode/ClassFile;)[B

    move-result-object v0

    .line 151
    .local v0, "b":[B
    sget-boolean v1, Ljavassist/util/proxy/ProxyFactory;->onlyPublicMethods:Z

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljavassist/util/proxy/DefineClassHelper;->toPublicClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 154
    :cond_0
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, v0}, Ljavassist/util/proxy/DefineClassHelper;->toClass(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;[B)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 157
    .end local v0    # "b":[B
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toClass(Ljavassist/bytecode/ClassFile;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .param p0, "cf"    # Ljavassist/bytecode/ClassFile;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ClassFile;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Ljavassist/util/proxy/FactoryHelper;->toClass(Ljavassist/bytecode/ClassFile;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static toClass(Ljavassist/bytecode/ClassFile;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 1
    .param p0, "cf"    # Ljavassist/bytecode/ClassFile;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "domain"    # Ljava/security/ProtectionDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ClassFile;",
            "Ljava/lang/ClassLoader;",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Ljavassist/util/proxy/FactoryHelper;->toClass(Ljavassist/bytecode/ClassFile;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static toClass(Ljavassist/bytecode/ClassFile;Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;
    .locals 2
    .param p0, "cf"    # Ljavassist/bytecode/ClassFile;
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ClassFile;",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 172
    :try_start_0
    invoke-static {p0}, Ljavassist/util/proxy/FactoryHelper;->toBytecode(Ljavassist/bytecode/ClassFile;)[B

    move-result-object v0

    .line 173
    .local v0, "b":[B
    invoke-static {p1, v0}, Ljavassist/util/proxy/DefineClassHelper;->toClass(Ljava/lang/invoke/MethodHandles$Lookup;[B)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 175
    .end local v0    # "b":[B
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final typeIndex(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 43
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Ljavassist/util/proxy/FactoryHelper;->primitiveTypes:[Ljava/lang/Class;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 44
    aget-object v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 45
    return v0

    .line 43
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static writeFile(Ljavassist/bytecode/ClassFile;Ljava/lang/String;)V
    .locals 2
    .param p0, "cf"    # Ljavassist/bytecode/ClassFile;
    .param p1, "directoryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 199
    :try_start_0
    invoke-static {p0, p1}, Ljavassist/util/proxy/FactoryHelper;->writeFile0(Ljavassist/bytecode/ClassFile;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    nop

    .line 204
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static writeFile0(Ljavassist/bytecode/ClassFile;Ljava/lang/String;)V
    .locals 6
    .param p0, "cf"    # Ljavassist/bytecode/ClassFile;
    .param p1, "directoryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "classname":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    .line 210
    const/16 v3, 0x2e

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "filename":Ljava/lang/String;
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 212
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 213
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "dir":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 215
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 218
    .end local v3    # "dir":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 221
    .local v3, "out":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p0, v3}, Ljavassist/bytecode/ClassFile;->write(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 228
    nop

    .line 229
    return-void

    .line 227
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 223
    :catch_0
    move-exception v4

    .line 224
    .local v4, "e":Ljava/io/IOException;
    nop

    .end local v0    # "classname":Ljava/lang/String;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "pos":I
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .end local p0    # "cf":Ljavassist/bytecode/ClassFile;
    .end local p1    # "directoryName":Ljava/lang/String;
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "classname":Ljava/lang/String;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v2    # "pos":I
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    .restart local p0    # "cf":Ljavassist/bytecode/ClassFile;
    .restart local p1    # "directoryName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 228
    throw v4
.end method
