.class public Lorg/jline/terminal/impl/jna/osx/CLibrary$winsize;
.super Lcom/sun/jna/Structure;
.source "CLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/impl/jna/osx/CLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "winsize"
.end annotation


# instance fields
.field public ws_col:S

.field public ws_row:S

.field public ws_xpixel:S

.field public ws_ypixel:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/jline/terminal/Size;)V
    .locals 1
    .param p1, "ws"    # Lorg/jline/terminal/Size;

    .line 50
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 51
    invoke-virtual {p1}, Lorg/jline/terminal/Size;->getRows()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$winsize;->ws_row:S

    .line 52
    invoke-virtual {p1}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$winsize;->ws_col:S

    .line 53
    return-void
.end method


# virtual methods
.method protected getFieldOrder()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    const-string v0, "ws_row"

    const-string v1, "ws_col"

    const-string v2, "ws_xpixel"

    const-string v3, "ws_ypixel"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toSize()Lorg/jline/terminal/Size;
    .locals 3

    .line 56
    new-instance v0, Lorg/jline/terminal/Size;

    iget-short v1, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$winsize;->ws_col:S

    iget-short v2, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$winsize;->ws_row:S

    invoke-direct {v0, v1, v2}, Lorg/jline/terminal/Size;-><init>(II)V

    return-object v0
.end method
