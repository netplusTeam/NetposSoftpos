.class abstract Ljavassist/util/proxy/DefineClassHelper$Helper;
.super Ljava/lang/Object;
.source "DefineClassHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/util/proxy/DefineClassHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Helper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavassist/util/proxy/DefineClassHelper$1;)V
    .locals 0
    .param p1, "x0"    # Ljavassist/util/proxy/DefineClassHelper$1;

    .line 36
    invoke-direct {p0}, Ljavassist/util/proxy/DefineClassHelper$Helper;-><init>()V

    return-void
.end method


# virtual methods
.method abstract defineClass(Ljava/lang/String;[BIILjava/lang/Class;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
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
.end method
