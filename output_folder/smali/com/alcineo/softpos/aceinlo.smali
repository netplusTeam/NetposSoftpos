.class public Lcom/alcineo/softpos/aceinlo;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"


# static fields
.field private static final aoleinc:Ljava/lang/String;

.field public static final enolcai:Lcom/alcineo/softpos/oalecni;

.field public static final noaceli:I = 0x80


# instance fields
.field private final acileon:[B


# direct methods
.method public static synthetic $r8$lambda$1gTL0wMrN_karqF1TP85yLjyGYA(Lcom/alcineo/softpos/oeicanl;)Lcom/alcineo/softpos/aceinlo;
    .locals 1

    new-instance v0, Lcom/alcineo/softpos/aceinlo;

    invoke-direct {v0, p0}, Lcom/alcineo/softpos/aceinlo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-class v0, Lcom/alcineo/softpos/aceinlo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alcineo/softpos/aceinlo;->aoleinc:Ljava/lang/String;

    new-instance v0, Lcom/alcineo/softpos/aceinlo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/softpos/aceinlo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/aceinlo;->enolcai:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method private constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    const/4 p1, 0x2

    new-array p1, p1, [B

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/alcineo/softpos/aceinlo;->acileon:[B

    return-void

    :array_0
    .array-data 1
        -0x61t
        0x6t
    .end array-data
.end method

.method private constructor <init>([B)V
    .locals 2

    sget v0, Lcom/alcineo/softpos/alicneo;->SCMD_SUCCESS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x80

    invoke-direct {p0, v1, v0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    const/4 p1, 0x2

    new-array p1, p1, [B

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/alcineo/softpos/aceinlo;->acileon:[B

    return-void

    :array_0
    .array-data 1
        -0x61t
        0x6t
    .end array-data
.end method

.method public static native acileon(Ljava/util/List;)Lcom/alcineo/softpos/alicneo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;)",
            "Lcom/alcineo/softpos/alicneo;"
        }
    .end annotation
.end method


# virtual methods
.method public native acileon()[B
.end method

.method public native aoleinc()Lcom/alcineo/administrative/Kernel;
.end method

.method public native getCommandName()Ljava/lang/String;
.end method

.method public native noaceli()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;"
        }
    .end annotation
.end method
