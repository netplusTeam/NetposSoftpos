.class public Lcom/alcineo/administrative/commands/GetEmvTag;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"

# interfaces
.implements Lcom/alcineo/softpos/loceina;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alcineo/softpos/alicneo;",
        "Lcom/alcineo/softpos/loceina<",
        "Lcom/alcineo/utils/tlv/TlvItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final APPLICATION:B = -0x80t

.field public static final COMMAND:I = 0x56

.field public static final CONVERTER:Lcom/alcineo/softpos/oalecni;

.field public static final DRL:B = -0x7ft


# direct methods
.method public static synthetic $r8$lambda$C4vIbNzANKo0h0t4RVfbcrfCyoc(Lcom/alcineo/softpos/oeicanl;)Lcom/alcineo/administrative/commands/GetEmvTag;
    .locals 1

    new-instance v0, Lcom/alcineo/administrative/commands/GetEmvTag;

    invoke-direct {v0, p0}, Lcom/alcineo/administrative/commands/GetEmvTag;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/administrative/commands/GetEmvTag$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/administrative/commands/GetEmvTag$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/administrative/commands/GetEmvTag;->CONVERTER:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method private constructor <init>(B[B)V
    .locals 5

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x56

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    array-length v1, p2

    const/4 v2, 0x5

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, -0x21

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    aput-byte v4, v2, v3

    const/16 v4, 0xa

    aput-byte v4, v2, v0

    const/4 v0, 0x3

    aput-byte v3, v2, v0

    const/4 v0, 0x4

    aput-byte p1, v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alcineo/softpos/alicneo;->a([B)V

    return-void
.end method

.method private constructor <init>(B[BBB)V
    .locals 7

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x56

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    array-length v1, p2

    add-int/lit8 v1, v1, 0x9

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, -0x21

    aput-byte v4, v2, v3

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    const/16 v4, 0xa

    aput-byte v4, v2, v0

    const/4 v4, 0x3

    aput-byte v5, v2, v4

    const/4 v6, 0x4

    aput-byte p1, v2, v6

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-array p1, v4, [B

    const/16 v2, -0x41

    aput-byte v2, p1, v3

    aput-byte p4, p1, v5

    aput-byte p3, p1, v0

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    array-length p1, p2

    int-to-byte p1, p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alcineo/softpos/alicneo;->a([B)V

    return-void
.end method

.method private constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    const/16 v0, 0x56

    invoke-static {p1, v0}, Lcom/alcineo/softpos/alicneo;->checkCommandValue(Lcom/alcineo/softpos/oeicanl;I)V

    return-void
.end method

.method public static native getExecutor(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;B[B)Lcom/alcineo/softpos/alineco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/lniaeoc;",
            "Lcom/alcineo/softpos/coalnie;",
            "B[B)",
            "Lcom/alcineo/softpos/alineco<",
            "Lcom/alcineo/administrative/commands/GetEmvTag;",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;"
        }
    .end annotation
.end method

.method public static native getExecutor(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;B[BBB)Lcom/alcineo/softpos/alineco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/lniaeoc;",
            "Lcom/alcineo/softpos/coalnie;",
            "B[BBB)",
            "Lcom/alcineo/softpos/alineco<",
            "Lcom/alcineo/administrative/commands/GetEmvTag;",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;"
        }
    .end annotation
.end method


# virtual methods
.method public native getCommandName()Ljava/lang/String;
.end method

.method public native getExecutionResult()Lcom/alcineo/utils/tlv/TlvItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public bridge native synthetic getExecutionResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
