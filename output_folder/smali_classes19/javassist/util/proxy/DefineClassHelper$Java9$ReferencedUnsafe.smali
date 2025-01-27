.class final Ljavassist/util/proxy/DefineClassHelper$Java9$ReferencedUnsafe;
.super Ljava/lang/Object;
.source "DefineClassHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/util/proxy/DefineClassHelper$Java9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ReferencedUnsafe"
.end annotation


# instance fields
.field private final defineClass:Ljava/lang/invoke/MethodHandle;

.field private final sunMiscUnsafeTheUnsafe:Ljavassist/util/proxy/SecurityActions$TheUnsafe;

.field final synthetic this$0:Ljavassist/util/proxy/DefineClassHelper$Java9;


# direct methods
.method constructor <init>(Ljavassist/util/proxy/DefineClassHelper$Java9;Ljavassist/util/proxy/SecurityActions$TheUnsafe;Ljava/lang/invoke/MethodHandle;)V
    .locals 0
    .param p1, "this$0"    # Ljavassist/util/proxy/DefineClassHelper$Java9;
    .param p2, "usf"    # Ljavassist/util/proxy/SecurityActions$TheUnsafe;
    .param p3, "meth"    # Ljava/lang/invoke/MethodHandle;

    .line 62
    iput-object p1, p0, Ljavassist/util/proxy/DefineClassHelper$Java9$ReferencedUnsafe;->this$0:Ljavassist/util/proxy/DefineClassHelper$Java9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Ljavassist/util/proxy/DefineClassHelper$Java9$ReferencedUnsafe;->sunMiscUnsafeTheUnsafe:Ljavassist/util/proxy/SecurityActions$TheUnsafe;

    .line 64
    iput-object p3, p0, Ljavassist/util/proxy/DefineClassHelper$Java9$ReferencedUnsafe;->defineClass:Ljava/lang/invoke/MethodHandle;

    .line 65
    return-void
.end method


# virtual methods
.method defineClass(Ljava/lang/String;[BIILjava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "loader"    # Ljava/lang/ClassLoader;
    .param p6, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII",
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

    .line 72
    :try_start_0
    iget-object v0, p0, Ljavassist/util/proxy/DefineClassHelper$Java9$ReferencedUnsafe;->this$0:Ljavassist/util/proxy/DefineClassHelper$Java9;

    invoke-static {v0}, Ljavassist/util/proxy/DefineClassHelper$Java9;->access$200(Ljavassist/util/proxy/DefineClassHelper$Java9;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Ljavassist/util/proxy/DefineClassHelper$Java9$ReferencedUnsafe;->this$0:Ljavassist/util/proxy/DefineClassHelper$Java9;

    invoke-static {v1}, Ljavassist/util/proxy/DefineClassHelper$Java9;->access$100(Ljavassist/util/proxy/DefineClassHelper$Java9;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljavassist/util/proxy/DefineClassHelper$Java9;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_2

    .line 76
    nop

    .line 78
    :try_start_1
    iget-object v0, p0, Ljavassist/util/proxy/DefineClassHelper$Java9$ReferencedUnsafe;->defineClass:Ljava/lang/invoke/MethodHandle;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Ljavassist/util/proxy/DefineClassHelper$Java9$ReferencedUnsafe;->sunMiscUnsafeTheUnsafe:Ljavassist/util/proxy/SecurityActions$TheUnsafe;

    iget-object v3, v3, Ljavassist/util/proxy/SecurityActions$TheUnsafe;->theUnsafe:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    .line 80
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_1

    .line 83
    instance-of v1, v0, Ljava/lang/ClassFormatError;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/ClassFormatError;

    throw v1

    .line 84
    :cond_0
    new-instance v1, Ljava/lang/ClassFormatError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassFormatError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 73
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Access denied for caller."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "b":[B
    .end local p3    # "off":I
    .end local p4    # "len":I
    .end local p5    # "loader":Ljava/lang/ClassLoader;
    .end local p6    # "protectionDomain":Ljava/security/ProtectionDomain;
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 74
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "b":[B
    .restart local p3    # "off":I
    .restart local p4    # "len":I
    .restart local p5    # "loader":Ljava/lang/ClassLoader;
    .restart local p6    # "protectionDomain":Ljava/security/ProtectionDomain;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "cannot initialize"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
