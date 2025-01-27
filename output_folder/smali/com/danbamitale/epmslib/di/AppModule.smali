.class public final Lcom/danbamitale/epmslib/di/AppModule;
.super Ljava/lang/Object;
.source "AppModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\t\u0010\u0008\u001a\u00020\u0004H\u0082 J\t\u0010\t\u001a\u00020\u0004H\u0082 J\t\u0010\n\u001a\u00020\u0004H\u0082 J\t\u0010\u000b\u001a\u00020\u0004H\u0082 J\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\rJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/di/AppModule;",
        "",
        "()V",
        "STRING_REQ_CRED_IV",
        "",
        "STRING_REQ_CRED_IV_2",
        "STRING_REQ_CRED_SEC_K",
        "STRING_REQ_CRED_SEC_K_2",
        "getSeK",
        "getSeK2",
        "getSeiv",
        "getSeiv2",
        "providesDataEc",
        "Lcom/danbamitale/epmslib/domain/DataEc;",
        "providesDataEc2",
        "providesDataEcImpl",
        "Lcom/danbamitale/epmslib/di/DataEcImpl;",
        "providesDataEcImpl2",
        "Lcom/danbamitale/epmslib/comms/DataEcDc;",
        "epmslib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/danbamitale/epmslib/di/AppModule;

.field private static final STRING_REQ_CRED_IV:Ljava/lang/String;

.field private static final STRING_REQ_CRED_IV_2:Ljava/lang/String;

.field private static final STRING_REQ_CRED_SEC_K:Ljava/lang/String;

.field private static final STRING_REQ_CRED_SEC_K_2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/danbamitale/epmslib/di/AppModule;

    invoke-direct {v0}, Lcom/danbamitale/epmslib/di/AppModule;-><init>()V

    sput-object v0, Lcom/danbamitale/epmslib/di/AppModule;->INSTANCE:Lcom/danbamitale/epmslib/di/AppModule;

    .line 7
    nop

    .line 8
    const-string v1, "module-params"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    nop

    .line 17
    invoke-direct {v0}, Lcom/danbamitale/epmslib/di/AppModule;->getSeK()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/danbamitale/epmslib/di/AppModule;->STRING_REQ_CRED_SEC_K:Ljava/lang/String;

    .line 18
    invoke-direct {v0}, Lcom/danbamitale/epmslib/di/AppModule;->getSeiv()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/danbamitale/epmslib/di/AppModule;->STRING_REQ_CRED_IV:Ljava/lang/String;

    .line 20
    invoke-direct {v0}, Lcom/danbamitale/epmslib/di/AppModule;->getSeK2()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/danbamitale/epmslib/di/AppModule;->STRING_REQ_CRED_SEC_K_2:Ljava/lang/String;

    .line 21
    invoke-direct {v0}, Lcom/danbamitale/epmslib/di/AppModule;->getSeiv2()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/danbamitale/epmslib/di/AppModule;->STRING_REQ_CRED_IV_2:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native getSeK()Ljava/lang/String;
.end method

.method private final native getSeK2()Ljava/lang/String;
.end method

.method private final native getSeiv()Ljava/lang/String;
.end method

.method private final native getSeiv2()Ljava/lang/String;
.end method

.method private final providesDataEcImpl()Lcom/danbamitale/epmslib/di/DataEcImpl;
    .locals 3

    .line 24
    new-instance v0, Lcom/danbamitale/epmslib/di/DataEcImpl;

    sget-object v1, Lcom/danbamitale/epmslib/di/AppModule;->STRING_REQ_CRED_SEC_K:Ljava/lang/String;

    sget-object v2, Lcom/danbamitale/epmslib/di/AppModule;->STRING_REQ_CRED_IV:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/di/DataEcImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final providesDataEcImpl2()Lcom/danbamitale/epmslib/comms/DataEcDc;
    .locals 3

    .line 27
    new-instance v0, Lcom/danbamitale/epmslib/comms/DataEcDc;

    sget-object v1, Lcom/danbamitale/epmslib/di/AppModule;->STRING_REQ_CRED_SEC_K_2:Ljava/lang/String;

    sget-object v2, Lcom/danbamitale/epmslib/di/AppModule;->STRING_REQ_CRED_IV_2:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/comms/DataEcDc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final providesDataEc()Lcom/danbamitale/epmslib/domain/DataEc;
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/danbamitale/epmslib/di/AppModule;->providesDataEcImpl()Lcom/danbamitale/epmslib/di/DataEcImpl;

    move-result-object v0

    check-cast v0, Lcom/danbamitale/epmslib/domain/DataEc;

    return-object v0
.end method

.method public final providesDataEc2()Lcom/danbamitale/epmslib/domain/DataEc;
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/danbamitale/epmslib/di/AppModule;->providesDataEcImpl2()Lcom/danbamitale/epmslib/comms/DataEcDc;

    move-result-object v0

    check-cast v0, Lcom/danbamitale/epmslib/domain/DataEc;

    return-object v0
.end method
