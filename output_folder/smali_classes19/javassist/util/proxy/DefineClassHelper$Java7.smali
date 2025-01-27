.class Ljavassist/util/proxy/DefineClassHelper$Java7;
.super Ljavassist/util/proxy/DefineClassHelper$Helper;
.source "DefineClassHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/util/proxy/DefineClassHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Java7"
.end annotation


# instance fields
.field private final defineClass:Ljava/lang/invoke/MethodHandle;

.field private final stack:Ljavassist/util/proxy/SecurityActions;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/util/proxy/DefineClassHelper$Helper;-><init>(Ljavassist/util/proxy/DefineClassHelper$1;)V

    .line 153
    sget-object v0, Ljavassist/util/proxy/SecurityActions;->stack:Ljavassist/util/proxy/SecurityActions;

    iput-object v0, p0, Ljavassist/util/proxy/DefineClassHelper$Java7;->stack:Ljavassist/util/proxy/SecurityActions;

    .line 154
    invoke-direct {p0}, Ljavassist/util/proxy/DefineClassHelper$Java7;->getDefineClassMethodHandle()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    iput-object v0, p0, Ljavassist/util/proxy/DefineClassHelper$Java7;->defineClass:Ljava/lang/invoke/MethodHandle;

    return-void
.end method

.method synthetic constructor <init>(Ljavassist/util/proxy/DefineClassHelper$1;)V
    .locals 0
    .param p1, "x0"    # Ljavassist/util/proxy/DefineClassHelper$1;

    .line 152
    invoke-direct {p0}, Ljavassist/util/proxy/DefineClassHelper$Java7;-><init>()V

    return-void
.end method

.method private final getDefineClassMethodHandle()Ljava/lang/invoke/MethodHandle;
    .locals 5

    .line 156
    invoke-static {}, Ljavassist/util/proxy/DefineClassHelper;->access$400()Ljavassist/util/proxy/DefineClassHelper$Helper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavassist/util/proxy/DefineClassHelper$Java7;->stack:Ljavassist/util/proxy/SecurityActions;

    invoke-virtual {v0}, Ljavassist/util/proxy/SecurityActions;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Access denied for caller."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
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

    invoke-static {v0, v1, v2}, Ljavassist/util/proxy/SecurityActions;->getMethodHandle(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "cannot initialize"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method defineClass(Ljava/lang/String;[BIILjava/lang/Class;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 4
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
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 174
    .local p5, "neighbor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Ljavassist/util/proxy/DefineClassHelper$Java7;->stack:Ljavassist/util/proxy/SecurityActions;

    invoke-virtual {v0}, Ljavassist/util/proxy/SecurityActions;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljavassist/util/proxy/DefineClassHelper;

    if-ne v0, v1, :cond_2

    .line 177
    :try_start_0
    iget-object v0, p0, Ljavassist/util/proxy/DefineClassHelper$Java7;->defineClass:Ljava/lang/invoke/MethodHandle;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p6, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    .line 178
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 179
    :catchall_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_1

    .line 181
    instance-of v1, v0, Ljava/lang/ClassFormatError;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/ClassFormatError;

    throw v1

    .line 182
    :cond_0
    new-instance v1, Ljava/lang/ClassFormatError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassFormatError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 175
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Access denied for caller."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
