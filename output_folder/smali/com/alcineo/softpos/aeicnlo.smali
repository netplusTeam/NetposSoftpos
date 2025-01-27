.class public Lcom/alcineo/softpos/aeicnlo;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"


# static fields
.field public static final acileon:I = 0xf7

.field public static final aoleinc:Lcom/alcineo/softpos/oalecni;


# direct methods
.method public static synthetic $r8$lambda$2uy5Gj3glII0mfSr1TuRhEM9OBw(Lcom/alcineo/softpos/oeicanl;)Lcom/alcineo/softpos/aeicnlo;
    .locals 1

    new-instance v0, Lcom/alcineo/softpos/aeicnlo;

    invoke-direct {v0, p0}, Lcom/alcineo/softpos/aeicnlo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/softpos/aeicnlo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/softpos/aeicnlo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/aeicnlo;->aoleinc:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method private constructor <init>(II[B)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [[B

    new-array v2, v2, [B

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    int-to-byte p1, p2

    const/4 p2, 0x1

    aput-byte p1, v2, p2

    aput-object v2, v3, v0

    aput-object p3, v3, p2

    invoke-static {v3}, Lcom/google/common/primitives/Bytes;->concat([[B)[B

    move-result-object p1

    const/16 p2, 0xf7

    invoke-direct {p0, p2, v1, p1}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    const/16 v0, 0xf7

    invoke-static {p1, v0}, Lcom/alcineo/softpos/alicneo;->checkCommandValue(Lcom/alcineo/softpos/oeicanl;I)V

    return-void
.end method

.method public static native acileon(II[B)Lcom/alcineo/softpos/aeicnlo;
.end method


# virtual methods
.method public native getCommandName()Ljava/lang/String;
.end method
