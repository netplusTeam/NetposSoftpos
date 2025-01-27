.class public Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;
.super Lcom/sun/jna/Structure;
.source "Kernel32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/impl/jna/win/Kernel32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMALL_RECT"
.end annotation


# static fields
.field private static fieldOrder:[Ljava/lang/String;


# instance fields
.field public Bottom:S

.field public Left:S

.field public Right:S

.field public Top:S


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 579
    const-string v0, "Left"

    const-string v1, "Top"

    const-string v2, "Right"

    const-string v3, "Bottom"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->fieldOrder:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 560
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 561
    return-void
.end method

.method public constructor <init>(Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;)V
    .locals 4
    .param p1, "org"    # Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;

    .line 564
    iget-short v0, p1, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->Top:S

    iget-short v1, p1, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->Left:S

    iget-short v2, p1, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->Bottom:S

    iget-short v3, p1, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->Right:S

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;-><init>(SSSS)V

    .line 565
    return-void
.end method

.method public constructor <init>(SSSS)V
    .locals 0
    .param p1, "Top"    # S
    .param p2, "Left"    # S
    .param p3, "Bottom"    # S
    .param p4, "Right"    # S

    .line 567
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 568
    iput-short p1, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->Top:S

    .line 569
    iput-short p2, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->Left:S

    .line 570
    iput-short p3, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->Bottom:S

    .line 571
    iput-short p4, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->Right:S

    .line 572
    return-void
.end method


# virtual methods
.method protected getFieldOrder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 583
    sget-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->fieldOrder:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public height()S
    .locals 2

    .line 591
    iget-short v0, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->Bottom:S

    iget-short v1, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->Top:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public width()S
    .locals 2

    .line 587
    iget-short v0, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->Right:S

    iget-short v1, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->Left:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method
