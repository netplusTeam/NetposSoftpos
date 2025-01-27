.class public Lorg/jline/terminal/impl/jna/win/Kernel32$KEY_EVENT_RECORD;
.super Lcom/sun/jna/Structure;
.source "Kernel32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/impl/jna/win/Kernel32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KEY_EVENT_RECORD"
.end annotation


# static fields
.field private static fieldOrder:[Ljava/lang/String;


# instance fields
.field public bKeyDown:Z

.field public dwControlKeyState:I

.field public uChar:Lorg/jline/terminal/impl/jna/win/Kernel32$UnionChar;

.field public wRepeatCount:S

.field public wVirtualKeyCode:S

.field public wVirtualScanCode:S


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 482
    const-string v0, "bKeyDown"

    const-string v1, "wRepeatCount"

    const-string v2, "wVirtualKeyCode"

    const-string v3, "wVirtualScanCode"

    const-string v4, "uChar"

    const-string v5, "dwControlKeyState"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32$KEY_EVENT_RECORD;->fieldOrder:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 474
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

    .line 486
    sget-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32$KEY_EVENT_RECORD;->fieldOrder:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
