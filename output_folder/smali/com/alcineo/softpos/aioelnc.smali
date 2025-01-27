.class public Lcom/alcineo/softpos/aioelnc;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"


# static fields
.field public static final enolcai:Lcom/alcineo/softpos/oalecni;

.field public static final nacieol:I = 0x8b

.field public static final noaceli:I = 0xec

.field public static final noelcai:I = 0x8a

.field public static final ocenlai:I = 0x85


# instance fields
.field private acileon:Ljava/lang/String;

.field private aoleinc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Fd_rlWEgjpexyZBXv7KaDjXFAQ0(Lcom/alcineo/softpos/oeicanl;)Lcom/alcineo/softpos/aioelnc;
    .locals 1

    new-instance v0, Lcom/alcineo/softpos/aioelnc;

    invoke-direct {v0, p0}, Lcom/alcineo/softpos/aioelnc;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/softpos/aioelnc$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/softpos/aioelnc$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/aioelnc;->enolcai:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/16 v0, 0x8a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xec

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alcineo/softpos/aioelnc;->aoleinc:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    const/16 v0, 0x85

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    const/16 p1, 0xec

    invoke-direct {p0, p1, v0, v1}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/alcineo/softpos/aioelnc;->aoleinc:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alcineo/softpos/aioelnc;->aoleinc:Ljava/util/List;

    const/16 v0, 0xec

    invoke-static {p1, v0}, Lcom/alcineo/softpos/alicneo;->checkCommandValue(Lcom/alcineo/softpos/oeicanl;I)V

    invoke-virtual {p0}, Lcom/alcineo/softpos/alicneo;->getData()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/alcineo/utils/common/StringUtils;->getNextString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/alcineo/softpos/aioelnc;->acileon:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/alcineo/softpos/aioelnc;->aoleinc:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {p1}, Lcom/alcineo/utils/common/StringUtils;->getNextString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static native acileon(I)Lcom/alcineo/softpos/alicneo;
.end method

.method public static native aoleinc()Lcom/alcineo/softpos/aioelnc;
.end method


# virtual methods
.method public native acileon()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native getCommandName()Ljava/lang/String;
.end method

.method public native noaceli()Ljava/lang/String;
.end method
