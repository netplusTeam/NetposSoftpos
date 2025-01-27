.class public Lcom/alcineo/administrative/commands/GetFirmwareVersion;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"

# interfaces
.implements Lcom/alcineo/softpos/loceina;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alcineo/softpos/alicneo;",
        "Lcom/alcineo/softpos/loceina<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final COMMAND:I = 0xf6

.field public static final CONVERTER:Lcom/alcineo/softpos/oalecni;


# direct methods
.method public static synthetic $r8$lambda$MjBabwxfgpvZD73XRwP2Eecce8k(Lcom/alcineo/softpos/oeicanl;)Lcom/alcineo/administrative/commands/GetFirmwareVersion;
    .locals 1

    new-instance v0, Lcom/alcineo/administrative/commands/GetFirmwareVersion;

    invoke-direct {v0, p0}, Lcom/alcineo/administrative/commands/GetFirmwareVersion;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/administrative/commands/GetFirmwareVersion$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/administrative/commands/GetFirmwareVersion$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/administrative/commands/GetFirmwareVersion;->CONVERTER:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [B

    const/16 v1, 0xf6

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    const/16 v0, 0xf6

    invoke-static {p1, v0}, Lcom/alcineo/softpos/alicneo;->checkCommandValue(Lcom/alcineo/softpos/oeicanl;I)V

    return-void
.end method

.method public static native getExecutor(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;)Lcom/alcineo/softpos/alineco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/lniaeoc;",
            "Lcom/alcineo/softpos/coalnie;",
            ")",
            "Lcom/alcineo/softpos/alineco<",
            "Lcom/alcineo/administrative/commands/GetFirmwareVersion;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method


# virtual methods
.method public native getCommandName()Ljava/lang/String;
.end method

.method public bridge native synthetic getExecutionResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public native getExecutionResult()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
