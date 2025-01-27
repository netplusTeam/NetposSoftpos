.class public final Lio/netty/channel/WriteBufferWaterMark;
.super Ljava/lang/Object;
.source "WriteBufferWaterMark.java"


# static fields
.field public static final DEFAULT:Lio/netty/channel/WriteBufferWaterMark;

.field private static final DEFAULT_HIGH_WATER_MARK:I = 0x10000

.field private static final DEFAULT_LOW_WATER_MARK:I = 0x8000


# instance fields
.field private final high:I

.field private final low:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    new-instance v0, Lio/netty/channel/WriteBufferWaterMark;

    const v1, 0x8000

    const/high16 v2, 0x10000

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/netty/channel/WriteBufferWaterMark;-><init>(IIZ)V

    sput-object v0, Lio/netty/channel/WriteBufferWaterMark;->DEFAULT:Lio/netty/channel/WriteBufferWaterMark;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/WriteBufferWaterMark;-><init>(IIZ)V

    .line 52
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 3
    .param p1, "low"    # I
    .param p2, "high"    # I
    .param p3, "validate"    # Z

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-eqz p3, :cond_1

    .line 59
    const-string v0, "low"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 60
    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write buffer\'s high water mark cannot be less than  low water mark ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    :goto_0
    iput p1, p0, Lio/netty/channel/WriteBufferWaterMark;->low:I

    .line 68
    iput p2, p0, Lio/netty/channel/WriteBufferWaterMark;->high:I

    .line 69
    return-void
.end method


# virtual methods
.method public high()I
    .locals 1

    .line 82
    iget v0, p0, Lio/netty/channel/WriteBufferWaterMark;->high:I

    return v0
.end method

.method public low()I
    .locals 1

    .line 75
    iget v0, p0, Lio/netty/channel/WriteBufferWaterMark;->low:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x37

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    const-string v1, "WriteBufferWaterMark(low: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/channel/WriteBufferWaterMark;->low:I

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    const-string v1, ", high: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/channel/WriteBufferWaterMark;->high:I

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
