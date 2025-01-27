.class public Lorg/jline/terminal/impl/jna/win/Kernel32$MOUSE_EVENT_RECORD;
.super Lcom/sun/jna/Structure;
.source "Kernel32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/impl/jna/win/Kernel32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MOUSE_EVENT_RECORD"
.end annotation


# static fields
.field private static fieldOrder:[Ljava/lang/String;


# instance fields
.field public dwButtonState:I

.field public dwControlKeyState:I

.field public dwEventFlags:I

.field public dwMousePosition:Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 502
    const-string v0, "dwMousePosition"

    const-string v1, "dwButtonState"

    const-string v2, "dwControlKeyState"

    const-string v3, "dwEventFlags"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32$MOUSE_EVENT_RECORD;->fieldOrder:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 496
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

    .line 506
    sget-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32$MOUSE_EVENT_RECORD;->fieldOrder:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
