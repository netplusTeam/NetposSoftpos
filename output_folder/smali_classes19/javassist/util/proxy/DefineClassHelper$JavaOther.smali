.class Ljavassist/util/proxy/DefineClassHelper$JavaOther;
.super Ljavassist/util/proxy/DefineClassHelper$Helper;
.source "DefineClassHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/util/proxy/DefineClassHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JavaOther"
.end annotation


# instance fields
.field private final defineClass:Ljava/lang/reflect/Method;

.field private final stack:Ljavassist/util/proxy/SecurityActions;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/util/proxy/DefineClassHelper$Helper;-><init>(Ljavassist/util/proxy/DefineClassHelper$1;)V

    .line 188
    invoke-direct {p0}, Ljavassist/util/proxy/DefineClassHelper$JavaOther;->getDefineClassMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ljavassist/util/proxy/DefineClassHelper$JavaOther;->defineClass:Ljava/lang/reflect/Method;

    .line 189
    sget-object v0, Ljavassist/util/proxy/SecurityActions;->stack:Ljavassist/util/proxy/SecurityActions;

    iput-object v0, p0, Ljavassist/util/proxy/DefineClassHelper$JavaOther;->stack:Ljavassist/util/proxy/SecurityActions;

    return-void
.end method

.method synthetic constructor <init>(Ljavassist/util/proxy/DefineClassHelper$1;)V
    .locals 0
    .param p1, "x0"    # Ljavassist/util/proxy/DefineClassHelper$1;

    .line 187
    invoke-direct {p0}, Ljavassist/util/proxy/DefineClassHelper$JavaOther;-><init>()V

    return-void
.end method

.method private final getDefineClassMethod()Ljava/lang/reflect/Method;
    .locals 5

    .line 192
    invoke-static {}, Ljavassist/util/proxy/DefineClassHelper;->access$400()Ljavassist/util/proxy/DefineClassHelper$Helper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavassist/util/proxy/DefineClassHelper$JavaOther;->stack:Ljavassist/util/proxy/SecurityActions;

    invoke-virtual {v0}, Ljavassist/util/proxy/SecurityActions;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Access denied for caller."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    :goto_0
    :try_start_0
    const-class v0, Ljava/lang/ClassLoader;

    const-string v1, "defineClass"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, [B

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Ljava/security/ProtectionDomain;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljavassist/util/proxy/SecurityActions;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "cannot initialize"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method defineClass(Ljava/lang/String;[BIILjava/lang/Class;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p6, "loader"    # Ljava/lang/ClassLoader;
    .param p7, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII",
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
            Ljava/lang/ClassFormatError;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 209
    .local p5, "neighbor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Ljavassist/util/proxy/DefineClassHelper$JavaOther;->stack:Ljavassist/util/proxy/SecurityActions;

    invoke-virtual {v0}, Ljavassist/util/proxy/SecurityActions;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    .line 210
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljavassist/util/proxy/DefineClassHelper;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    new-instance v1, Ljava/lang/IllegalAccessError;

    const-string v2, "Access denied for caller."

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Ljavassist/util/proxy/DefineClassHelper$JavaOther;->defineClass:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljavassist/util/proxy/SecurityActions;->setAccessible(Ljava/lang/reflect/AccessibleObject;Z)V

    .line 214
    iget-object v1, p0, Ljavassist/util/proxy/DefineClassHelper$JavaOther;->defineClass:Ljava/lang/reflect/Method;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v2

    const/4 v2, 0x2

    .line 215
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x4

    aput-object p7, v3, v2

    .line 214
    invoke-virtual {v1, p6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 217
    :catchall_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/ClassFormatError;

    if-nez v2, :cond_3

    .line 219
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 220
    :cond_2
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 218
    :cond_3
    move-object v2, v1

    check-cast v2, Ljava/lang/ClassFormatError;

    throw v2
.end method
