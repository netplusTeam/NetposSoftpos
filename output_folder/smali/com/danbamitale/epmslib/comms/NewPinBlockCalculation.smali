.class public final Lcom/danbamitale/epmslib/comms/NewPinBlockCalculation;
.super Ljava/lang/Object;
.source "NewPinBlockCalculation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/comms/NewPinBlockCalculation;",
        "",
        "()V",
        "getEncryptedPinBlock",
        "",
        "pin",
        "cardPan",
        "pinKey",
        "pinBlockPartOne",
        "pinBlockPartTwo",
        "epmslib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/danbamitale/epmslib/comms/NewPinBlockCalculation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/danbamitale/epmslib/comms/NewPinBlockCalculation;

    invoke-direct {v0}, Lcom/danbamitale/epmslib/comms/NewPinBlockCalculation;-><init>()V

    sput-object v0, Lcom/danbamitale/epmslib/comms/NewPinBlockCalculation;->INSTANCE:Lcom/danbamitale/epmslib/comms/NewPinBlockCalculation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final pinBlockPartOne(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, "paddedPin":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x10

    .line 16
    .local v1, "lengthOfFiller":I
    const-string v2, "F"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2, v1}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v2

    .line 17
    .local v2, "filler":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private final pinBlockPartTwo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cardPan"    # Ljava/lang/String;

    .line 25
    const-string v0, "0000"

    .line 26
    .local v0, "filler":Ljava/lang/String;
    const/4 v1, 0x3

    const/16 v2, 0xf

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "carPanSubString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public final getEncryptedPinBlock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "cardPan"    # Ljava/lang/String;
    .param p3, "pinKey"    # Ljava/lang/String;

    const-string/jumbo v0, "pin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardPan"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pinKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/danbamitale/epmslib/comms/NewPinBlockCalculation;->pinBlockPartOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "pinBlockPart1":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/danbamitale/epmslib/comms/NewPinBlockCalculation;->pinBlockPartTwo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "pinBlockPart2":Ljava/lang/String;
    sget-object v2, Lcom/danbamitale/epmslib/comms/XorUtil;->INSTANCE:Lcom/danbamitale/epmslib/comms/XorUtil;

    invoke-virtual {v2, v0, v1}, Lcom/danbamitale/epmslib/comms/XorUtil;->xorHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "pinBlock":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v4, "DATA_EXACT_PIN_BLOCK===>%s"

    invoke-static {v4, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-static {v2, p3}, Lcom/danbamitale/epmslib/utils/TripleDES;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "encrypt(pinBlock, pinKey)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method
