.class public Lcom/alcineo/softpos/noelcai;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"

# interfaces
.implements Lcom/alcineo/softpos/loceina;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alcineo/softpos/alicneo;",
        "Lcom/alcineo/softpos/loceina<",
        "[B>;"
    }
.end annotation


# static fields
.field public static final acileon:I = 0xd0

.field private static final aoleinc:I

.field public static final noaceli:Lcom/alcineo/softpos/oalecni;


# direct methods
.method public static synthetic $r8$lambda$g4C8C7Smng9O5kX1Z95cwGpM5dk(Lcom/alcineo/softpos/oeicanl;)Lcom/alcineo/softpos/noelcai;
    .locals 1

    new-instance v0, Lcom/alcineo/softpos/noelcai;

    invoke-direct {v0, p0}, Lcom/alcineo/softpos/noelcai;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/softpos/noelcai$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/softpos/noelcai$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/noelcai;->noaceli:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v0, v0, [B

    const/16 v2, 0xd0

    invoke-direct {p0, v2, v1, v0}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    const/16 v0, 0xd0

    invoke-static {p1, v0}, Lcom/alcineo/softpos/alicneo;->checkCommandValue(Lcom/alcineo/softpos/oeicanl;I)V

    return-void
.end method

.method public static native acileon()Lcom/alcineo/softpos/noelcai;
.end method

.method public static native getExecutor(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;)Lcom/alcineo/softpos/alineco;
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

.method public native getExecutionResult()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
