.class public Lcom/alcineo/administrative/commands/SetKernelInfo;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"

# interfaces
.implements Lcom/alcineo/softpos/loceina;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alcineo/softpos/alicneo;",
        "Lcom/alcineo/softpos/loceina<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final COMMAND:I = 0xf3

.field public static final CONVERTER:Lcom/alcineo/softpos/oalecni;


# direct methods
.method public static synthetic $r8$lambda$aTjk5sr232stSfF_1D4apVrTe8g(Lcom/alcineo/softpos/oeicanl;)Lcom/alcineo/administrative/commands/SetKernelInfo;
    .locals 1

    new-instance v0, Lcom/alcineo/administrative/commands/SetKernelInfo;

    invoke-direct {v0, p0}, Lcom/alcineo/administrative/commands/SetKernelInfo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/administrative/commands/SetKernelInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/administrative/commands/SetKernelInfo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/administrative/commands/SetKernelInfo;->CONVERTER:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method private constructor <init>(BZ)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf3

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    and-int/lit8 p1, p1, 0x7f

    int-to-byte p1, p1

    if-eqz p2, :cond_0

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [B

    aput-byte p1, p2, v0

    invoke-virtual {p0, p2}, Lcom/alcineo/softpos/alicneo;->a([B)V

    return-void
.end method

.method private constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    const/16 v0, 0xf3

    invoke-static {p1, v0}, Lcom/alcineo/softpos/alicneo;->checkCommandValue(Lcom/alcineo/softpos/oeicanl;I)V

    return-void
.end method

.method public static native getExecutor(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;BZ)Lcom/alcineo/softpos/alineco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/lniaeoc;",
            "Lcom/alcineo/softpos/coalnie;",
            "BZ)",
            "Lcom/alcineo/softpos/alineco<",
            "Lcom/alcineo/administrative/commands/SetKernelInfo;",
            "Ljava/lang/Void;",
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

.method public native getExecutionResult()Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
