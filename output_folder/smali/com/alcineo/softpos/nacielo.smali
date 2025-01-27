.class public Lcom/alcineo/softpos/nacielo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final noaceli:Ljava/lang/String; = "nacielo"


# instance fields
.field private final acileon:Lcom/alcineo/softpos/aleonci;

.field public aoleinc:Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/aleonci;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alcineo/softpos/nacielo;->acileon:Lcom/alcineo/softpos/aleonci;

    invoke-virtual {p1}, Lcom/alcineo/softpos/aleonci;->aoleinc()Lcom/alcineo/softpos/lniaeoc;

    move-result-object v0

    sget-object v1, Lcom/alcineo/softpos/locniae;->aoleinc:Lcom/alcineo/softpos/oalecni;

    const/16 v2, 0xf4

    invoke-virtual {v0, v2, v1}, Lcom/alcineo/softpos/lniaeoc;->acileon(ILcom/alcineo/softpos/oalecni;)V

    invoke-virtual {p1}, Lcom/alcineo/softpos/aleonci;->aoleinc()Lcom/alcineo/softpos/lniaeoc;

    move-result-object p1

    new-instance v0, Lcom/alcineo/softpos/nacielo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/alcineo/softpos/nacielo$$ExternalSyntheticLambda0;-><init>(Lcom/alcineo/softpos/nacielo;)V

    const-class v1, Lcom/alcineo/softpos/locniae;

    invoke-virtual {p1, v1, v0}, Lcom/alcineo/softpos/lniaeoc;->acileon(Ljava/lang/Class;Lcom/alcineo/softpos/ociealn;)V

    return-void
.end method


# virtual methods
.method public native acileon()V
.end method

.method public native acileon(Lcom/alcineo/softpos/locniae;)V
.end method

.method public native acileon(Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;)V
.end method
