.class public Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;
.super Lcom/sun/jna/Structure;
.source "Kernel32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/impl/jna/win/Kernel32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CONSOLE_SCREEN_BUFFER_INFO"
.end annotation


# static fields
.field private static fieldOrder:[Ljava/lang/String;


# instance fields
.field public dwCursorPosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

.field public dwMaximumWindowSize:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

.field public dwSize:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;

.field public srWindow:Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;

.field public wAttributes:S


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 364
    const-string v0, "dwSize"

    const-string v1, "dwCursorPosition"

    const-string v2, "wAttributes"

    const-string v3, "srWindow"

    const-string v4, "dwMaximumWindowSize"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->fieldOrder:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 357
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

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

    .line 368
    sget-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->fieldOrder:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public windowHeight()I
    .locals 1

    .line 376
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->srWindow:Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;

    invoke-virtual {v0}, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->height()S

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public windowWidth()I
    .locals 1

    .line 372
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->srWindow:Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;

    invoke-virtual {v0}, Lorg/jline/terminal/impl/jna/win/Kernel32$SMALL_RECT;->width()S

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
