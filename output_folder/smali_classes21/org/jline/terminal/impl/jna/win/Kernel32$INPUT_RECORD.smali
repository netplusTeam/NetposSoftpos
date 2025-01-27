.class public Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;
.super Lcom/sun/jna/Structure;
.source "Kernel32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/impl/jna/win/Kernel32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "INPUT_RECORD"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD$EventUnion;
    }
.end annotation


# static fields
.field public static final FOCUS_EVENT:S = 0x10s

.field public static final KEY_EVENT:S = 0x1s

.field public static final MENU_EVENT:S = 0x8s

.field public static final MOUSE_EVENT:S = 0x2s

.field public static final WINDOW_BUFFER_SIZE_EVENT:S = 0x4s

.field private static fieldOrder:[Ljava/lang/String;


# instance fields
.field public Event:Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD$EventUnion;

.field public EventType:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 455
    const-string v0, "EventType"

    const-string v1, "Event"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;->fieldOrder:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 414
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

    .line 459
    sget-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;->fieldOrder:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public read()V
    .locals 2

    .line 434
    const-string v0, "EventType"

    invoke-virtual {p0, v0}, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;->readField(Ljava/lang/String;)Ljava/lang/Object;

    .line 435
    iget-short v0, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;->EventType:S

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 449
    :sswitch_0
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;->Event:Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD$EventUnion;

    const-class v1, Lorg/jline/terminal/impl/jna/win/Kernel32$MENU_EVENT_RECORD;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD$EventUnion;->setType(Ljava/lang/Class;)V

    goto :goto_0

    .line 446
    :sswitch_1
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;->Event:Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD$EventUnion;

    const-class v1, Lorg/jline/terminal/impl/jna/win/Kernel32$MENU_EVENT_RECORD;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD$EventUnion;->setType(Ljava/lang/Class;)V

    .line 447
    goto :goto_0

    .line 443
    :sswitch_2
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;->Event:Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD$EventUnion;

    const-class v1, Lorg/jline/terminal/impl/jna/win/Kernel32$WINDOW_BUFFER_SIZE_RECORD;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD$EventUnion;->setType(Ljava/lang/Class;)V

    .line 444
    goto :goto_0

    .line 440
    :sswitch_3
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;->Event:Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD$EventUnion;

    const-class v1, Lorg/jline/terminal/impl/jna/win/Kernel32$MOUSE_EVENT_RECORD;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD$EventUnion;->setType(Ljava/lang/Class;)V

    .line 441
    goto :goto_0

    .line 437
    :sswitch_4
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD;->Event:Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD$EventUnion;

    const-class v1, Lorg/jline/terminal/impl/jna/win/Kernel32$KEY_EVENT_RECORD;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/impl/jna/win/Kernel32$INPUT_RECORD$EventUnion;->setType(Ljava/lang/Class;)V

    .line 438
    nop

    .line 452
    :goto_0
    invoke-super {p0}, Lcom/sun/jna/Structure;->read()V

    .line 453
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method
