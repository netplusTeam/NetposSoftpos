.class Ljavassist/util/proxy/DefineClassHelper$Java11;
.super Ljavassist/util/proxy/DefineClassHelper$JavaOther;
.source "DefineClassHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/util/proxy/DefineClassHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Java11"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/util/proxy/DefineClassHelper$JavaOther;-><init>(Ljavassist/util/proxy/DefineClassHelper$1;)V

    return-void
.end method

.method synthetic constructor <init>(Ljavassist/util/proxy/DefineClassHelper$1;)V
    .locals 0
    .param p1, "x0"    # Ljavassist/util/proxy/DefineClassHelper$1;

    .line 42
    invoke-direct {p0}, Ljavassist/util/proxy/DefineClassHelper$Java11;-><init>()V

    return-void
.end method


# virtual methods
.method defineClass(Ljava/lang/String;[BIILjava/lang/Class;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bcode"    # [B
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

    .line 47
    .local p5, "neighbor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p5, :cond_0

    .line 48
    invoke-static {p5, p2}, Ljavassist/util/proxy/DefineClassHelper;->toClass(Ljava/lang/Class;[B)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    invoke-super/range {p0 .. p7}, Ljavassist/util/proxy/DefineClassHelper$JavaOther;->defineClass(Ljava/lang/String;[BIILjava/lang/Class;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
