.class public Ljavassist/util/proxy/DefineClassHelper;
.super Ljava/lang/Object;
.source "DefineClassHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/util/proxy/DefineClassHelper$JavaOther;,
        Ljavassist/util/proxy/DefineClassHelper$Java7;,
        Ljavassist/util/proxy/DefineClassHelper$Java9;,
        Ljavassist/util/proxy/DefineClassHelper$Java11;,
        Ljavassist/util/proxy/DefineClassHelper$Helper;
    }
.end annotation


# static fields
.field private static final privileged:Ljavassist/util/proxy/DefineClassHelper$Helper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 227
    sget v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    const/4 v1, 0x0

    const/16 v2, 0x36

    if-le v0, v2, :cond_0

    .line 228
    new-instance v0, Ljavassist/util/proxy/DefineClassHelper$Java11;

    invoke-direct {v0, v1}, Ljavassist/util/proxy/DefineClassHelper$Java11;-><init>(Ljavassist/util/proxy/DefineClassHelper$1;)V

    goto :goto_0

    .line 229
    :cond_0
    sget v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    const/16 v2, 0x35

    if-lt v0, v2, :cond_1

    .line 230
    new-instance v0, Ljavassist/util/proxy/DefineClassHelper$Java9;

    invoke-direct {v0}, Ljavassist/util/proxy/DefineClassHelper$Java9;-><init>()V

    goto :goto_0

    .line 231
    :cond_1
    sget v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    const/16 v2, 0x33

    if-lt v0, v2, :cond_2

    new-instance v0, Ljavassist/util/proxy/DefineClassHelper$Java7;

    invoke-direct {v0, v1}, Ljavassist/util/proxy/DefineClassHelper$Java7;-><init>(Ljavassist/util/proxy/DefineClassHelper$1;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljavassist/util/proxy/DefineClassHelper$JavaOther;

    invoke-direct {v0, v1}, Ljavassist/util/proxy/DefineClassHelper$JavaOther;-><init>(Ljavassist/util/proxy/DefineClassHelper$1;)V

    :goto_0
    sput-object v0, Ljavassist/util/proxy/DefineClassHelper;->privileged:Ljavassist/util/proxy/DefineClassHelper$Helper;

    .line 227
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400()Ljavassist/util/proxy/DefineClassHelper$Helper;
    .locals 1

    .line 34
    sget-object v0, Ljavassist/util/proxy/DefineClassHelper;->privileged:Ljavassist/util/proxy/DefineClassHelper$Helper;

    return-object v0
.end method

.method public static toClass(Ljava/lang/Class;[B)Ljava/lang/Class;
    .locals 4
    .param p1, "bcode"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[B)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 292
    .local p0, "neighbor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-class v0, Ljavassist/util/proxy/DefineClassHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getModule()Ljava/lang/Module;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getModule()Ljava/lang/Module;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Module;->addReads(Ljava/lang/Module;)Ljava/lang/Module;

    .line 293
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 294
    .local v0, "lookup":Ljava/lang/invoke/MethodHandles$Lookup;
    invoke-static {p0, v0}, Ljava/lang/invoke/MethodHandles;->privateLookupIn(Ljava/lang/Class;Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 295
    .local v1, "prvlookup":Ljava/lang/invoke/MethodHandles$Lookup;
    invoke-virtual {v1, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->defineClass([B)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 296
    .end local v0    # "lookup":Ljava/lang/invoke/MethodHandles$Lookup;
    .end local v1    # "prvlookup":Ljava/lang/invoke/MethodHandles$Lookup;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljavassist/CannotCompileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no permission to define the class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static toClass(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;[B)Ljava/lang/Class;
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "domain"    # Ljava/security/ProtectionDomain;
    .param p4, "bcode"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/security/ProtectionDomain;",
            "[B)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 260
    .local p1, "neighbor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v0, Ljavassist/util/proxy/DefineClassHelper;->privileged:Ljavassist/util/proxy/DefineClassHelper$Helper;

    const/4 v3, 0x0

    array-length v4, p4

    move-object v1, p0

    move-object v2, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Ljavassist/util/proxy/DefineClassHelper$Helper;->defineClass(Ljava/lang/String;[BIILjava/lang/Class;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavassist/CannotCompileException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassFormatError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 269
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/ClassFormatError;
    invoke-virtual {v0}, Ljava/lang/ClassFormatError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 271
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljavassist/CannotCompileException;

    if-nez v1, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-direct {v2, v3}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 266
    .end local v0    # "e":Ljava/lang/ClassFormatError;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 267
    .local v0, "e":Ljavassist/CannotCompileException;
    throw v0

    .line 263
    .end local v0    # "e":Ljavassist/CannotCompileException;
    :catch_3
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0
.end method

.method public static toClass(Ljava/lang/invoke/MethodHandles$Lookup;[B)Ljava/lang/Class;
    .locals 3
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "bcode"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "[B)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 314
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->defineClass([B)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 315
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static toPublicClass(Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "bcode"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 329
    :try_start_0
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 330
    .local v0, "lookup":Ljava/lang/invoke/MethodHandles$Lookup;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->dropLookupMode(I)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    move-object v0, v1

    .line 331
    invoke-virtual {v0, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->defineClass([B)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 333
    .end local v0    # "lookup":Ljava/lang/invoke/MethodHandles$Lookup;
    :catchall_0
    move-exception v0

    .line 334
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
