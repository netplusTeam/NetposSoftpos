.class public Lcom/alcineo/softpos/ecaloin;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"


# static fields
.field public static final acileon:I = 0xfb

.field public static final aoleinc:I = 0x98

.field public static final noaceli:Lcom/alcineo/softpos/oalecni;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/softpos/ecaloin$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/softpos/ecaloin$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/ecaloin;->noaceli:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/alcineo/softpos/alicneo;->SCMD_SUCCESS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xfb

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    sget v0, Lcom/alcineo/softpos/alicneo;->SCMD_SUCCESS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xfb

    invoke-direct {p0, v1, v0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    return-void
.end method

.method public static native acileon()Lcom/alcineo/softpos/ecaloin;
.end method


# virtual methods
.method public native getCommandName()Ljava/lang/String;
.end method
