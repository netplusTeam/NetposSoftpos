.class public Lcom/alcineo/administrative/commands/SetEmvTags;
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


# static fields
.field public static final APPLICATION:B = -0x80t

.field public static final COMMAND:I = 0x57

.field public static final CONVERTER:Lcom/alcineo/softpos/oalecni;

.field public static final DRL:B = -0x7ft


# direct methods
.method public static synthetic $r8$lambda$4lZF5Yb7-sAT7V_Q2X_7lMTHn0s(Lcom/alcineo/softpos/oeicanl;)Lcom/alcineo/administrative/commands/SetEmvTags;
    .locals 1

    new-instance v0, Lcom/alcineo/administrative/commands/SetEmvTags;

    invoke-direct {v0, p0}, Lcom/alcineo/administrative/commands/SetEmvTags;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/administrative/commands/SetEmvTags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/administrative/commands/SetEmvTags$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/administrative/commands/SetEmvTags;->CONVERTER:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method private constructor <init>(B[B[B)V
    .locals 5

    sget v0, Lcom/alcineo/softpos/alicneo;->SCMD_SUCCESS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x57

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    array-length v0, p2

    const/4 v1, 0x5

    add-int/2addr v0, v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    array-length v3, p3

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-array v1, v1, [B

    const/4 v3, 0x0

    const/16 v4, -0x21

    aput-byte v4, v1, v3

    aput-byte v4, v1, v2

    const/4 v3, 0x2

    const/16 v4, 0xa

    aput-byte v4, v1, v3

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    const/4 v2, 0x4

    aput-byte p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    array-length p1, p3

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alcineo/softpos/alicneo;->a([B)V

    return-void
.end method

.method private constructor <init>(B[B[BBB)V
    .locals 7

    sget v0, Lcom/alcineo/softpos/alicneo;->SCMD_SUCCESS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x57

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    array-length v0, p2

    add-int/lit8 v0, v0, 0x9

    const/4 v1, 0x1

    add-int/2addr v0, v1

    array-length v2, p3

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x5

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, -0x21

    aput-byte v4, v2, v3

    aput-byte v4, v2, v1

    const/16 v4, 0xa

    const/4 v5, 0x2

    aput-byte v4, v2, v5

    const/4 v4, 0x3

    aput-byte v1, v2, v4

    const/4 v6, 0x4

    aput-byte p1, v2, v6

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-array p1, v4, [B

    const/16 v2, -0x41

    aput-byte v2, p1, v3

    aput-byte p5, p1, v1

    aput-byte p4, p1, v5

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    array-length p1, p2

    add-int/2addr p1, v1

    array-length p4, p3

    add-int/2addr p1, p4

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    array-length p1, p3

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alcineo/softpos/alicneo;->a([B)V

    return-void
.end method

.method private constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    const/16 v0, 0x57

    invoke-static {p1, v0}, Lcom/alcineo/softpos/alicneo;->checkCommandValue(Lcom/alcineo/softpos/oeicanl;I)V

    return-void
.end method

.method public static native getExecutor(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;B[B[B)Lcom/alcineo/softpos/alineco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/lniaeoc;",
            "Lcom/alcineo/softpos/coalnie;",
            "B[B[B)",
            "Lcom/alcineo/softpos/alineco<",
            "Lcom/alcineo/administrative/commands/SetEmvTags;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public static native getExecutor(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;B[B[BBB)Lcom/alcineo/softpos/alineco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/lniaeoc;",
            "Lcom/alcineo/softpos/coalnie;",
            "B[B[BBB)",
            "Lcom/alcineo/softpos/alineco<",
            "Lcom/alcineo/administrative/commands/SetEmvTags;",
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
