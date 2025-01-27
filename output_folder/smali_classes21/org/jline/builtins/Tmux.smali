.class public Lorg/jline/builtins/Tmux;
.super Ljava/lang/Object;
.source "Tmux.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/builtins/Tmux$VirtualConsole;,
        Lorg/jline/builtins/Tmux$Layout;,
        Lorg/jline/builtins/Tmux$Window;,
        Lorg/jline/builtins/Tmux$Binding;
    }
.end annotation


# static fields
.field public static final CMD_BIND:Ljava/lang/String; = "bind"

.field public static final CMD_BIND_KEY:Ljava/lang/String; = "bind-key"

.field public static final CMD_CLOCK_MODE:Ljava/lang/String; = "clock-mode"

.field public static final CMD_COMMANDS:Ljava/lang/String; = "commands"

.field public static final CMD_DISPLAYP:Ljava/lang/String; = "displayp"

.field public static final CMD_DISPLAY_PANES:Ljava/lang/String; = "display-panes"

.field public static final CMD_LIST_KEYS:Ljava/lang/String; = "list-keys"

.field public static final CMD_LIST_WINDOWS:Ljava/lang/String; = "list-windows"

.field public static final CMD_LSK:Ljava/lang/String; = "lsk"

.field public static final CMD_LSW:Ljava/lang/String; = "lsw"

.field public static final CMD_NEWW:Ljava/lang/String; = "neww"

.field public static final CMD_NEW_WINDOW:Ljava/lang/String; = "new-window"

.field public static final CMD_NEXT:Ljava/lang/String; = "next"

.field public static final CMD_NEXT_WINDOW:Ljava/lang/String; = "next-window"

.field public static final CMD_PREV:Ljava/lang/String; = "prev"

.field public static final CMD_PREVIOUS_WINDOW:Ljava/lang/String; = "previous-window"

.field public static final CMD_RESIZEP:Ljava/lang/String; = "resizep"

.field public static final CMD_RESIZE_PANE:Ljava/lang/String; = "resize-pane"

.field public static final CMD_SELECTP:Ljava/lang/String; = "selectp"

.field public static final CMD_SELECT_PANE:Ljava/lang/String; = "select-pane"

.field public static final CMD_SEND:Ljava/lang/String; = "send"

.field public static final CMD_SEND_KEYS:Ljava/lang/String; = "send-keys"

.field public static final CMD_SEND_PREFIX:Ljava/lang/String; = "send-prefix"

.field public static final CMD_SET:Ljava/lang/String; = "set"

.field public static final CMD_SET_OPTION:Ljava/lang/String; = "set-option"

.field public static final CMD_SPLITW:Ljava/lang/String; = "splitw"

.field public static final CMD_SPLIT_WINDOW:Ljava/lang/String; = "split-window"

.field public static final CMD_UNBIND:Ljava/lang/String; = "unbind"

.field public static final CMD_UNBIND_KEY:Ljava/lang/String; = "unbind-key"

.field public static final OPT_PREFIX:Ljava/lang/String; = "prefix"

.field private static final WINDOW_CLOCK_TABLE:[[[I


# instance fields
.field ACTIVE_COLOR:I

.field CLOCK_COLOR:I

.field INACTIVE_COLOR:I

.field private activeWindow:I

.field private clockFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final dirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final display:Lorg/jline/utils/Display;

.field private final err:Ljava/io/PrintStream;

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private identify:Z

.field private keyMap:Lorg/jline/keymap/KeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jline/keymap/KeyMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final resized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final runner:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lorg/jline/terminal/Terminal;",
            ">;"
        }
    .end annotation
.end field

.field private final running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final serverOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final size:Lorg/jline/terminal/Size;

.field private final term:Ljava/lang/String;

.field private final terminal:Lorg/jline/terminal/Terminal;

.field private windows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/builtins/Tmux$Window;",
            ">;"
        }
    .end annotation
.end field

.field private windowsId:Ljava/lang/Integer;


# direct methods
.method public static synthetic $r8$lambda$Xa_WX66lpm-zJcOLEjJ6JnOpzgA(Lorg/jline/builtins/Tmux;)V
    .locals 0

    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->setDirty()V

    return-void
.end method

.method public static synthetic $r8$lambda$hrqfDUydg_xL1N_WY1YLcxkHnrc(Lorg/jline/builtins/Tmux;Lorg/jline/terminal/Terminal$Signal;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/builtins/Tmux;->interrupt(Lorg/jline/terminal/Terminal$Signal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jX6QWkj_eFpQGlG9lDcZ6mGdI5I(Lorg/jline/builtins/Tmux;)V
    .locals 0

    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->inputLoop()V

    return-void
.end method

.method public static synthetic $r8$lambda$mQCfaBtgAZrENpL_FJ7KK9UrydQ(Lorg/jline/builtins/Tmux;Lorg/jline/terminal/Terminal$Signal;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/builtins/Tmux;->resize(Lorg/jline/terminal/Terminal$Signal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oHX7fIGm39oaWFDDDmleGWC055o(Lorg/jline/builtins/Tmux;Lorg/jline/terminal/Terminal$Signal;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/builtins/Tmux;->suspend(Lorg/jline/terminal/Terminal$Signal;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 101
    const/16 v0, 0xe

    new-array v0, v0, [[[I

    const/4 v1, 0x5

    new-array v2, v1, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_2

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-array v3, v1, [I

    fill-array-data v3, :array_3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    new-array v3, v1, [I

    fill-array-data v3, :array_4

    const/4 v8, 0x4

    aput-object v3, v2, v8

    aput-object v2, v0, v4

    new-array v2, v1, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_5

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_6

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_7

    aput-object v3, v2, v6

    new-array v3, v1, [I

    fill-array-data v3, :array_8

    aput-object v3, v2, v7

    new-array v3, v1, [I

    fill-array-data v3, :array_9

    aput-object v3, v2, v8

    aput-object v2, v0, v5

    new-array v2, v1, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_a

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_b

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_c

    aput-object v3, v2, v6

    new-array v3, v1, [I

    fill-array-data v3, :array_d

    aput-object v3, v2, v7

    new-array v3, v1, [I

    fill-array-data v3, :array_e

    aput-object v3, v2, v8

    aput-object v2, v0, v6

    new-array v2, v1, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_f

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_10

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_11

    aput-object v3, v2, v6

    new-array v3, v1, [I

    fill-array-data v3, :array_12

    aput-object v3, v2, v7

    new-array v3, v1, [I

    fill-array-data v3, :array_13

    aput-object v3, v2, v8

    aput-object v2, v0, v7

    new-array v2, v1, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_14

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_15

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_16

    aput-object v3, v2, v6

    new-array v3, v1, [I

    fill-array-data v3, :array_17

    aput-object v3, v2, v7

    new-array v3, v1, [I

    fill-array-data v3, :array_18

    aput-object v3, v2, v8

    aput-object v2, v0, v8

    new-array v2, v1, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_19

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_1a

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_1b

    aput-object v3, v2, v6

    new-array v3, v1, [I

    fill-array-data v3, :array_1c

    aput-object v3, v2, v7

    new-array v3, v1, [I

    fill-array-data v3, :array_1d

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    new-array v2, v1, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_1e

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_1f

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_20

    aput-object v3, v2, v6

    new-array v3, v1, [I

    fill-array-data v3, :array_21

    aput-object v3, v2, v7

    new-array v3, v1, [I

    fill-array-data v3, :array_22

    aput-object v3, v2, v8

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_23

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_24

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_25

    aput-object v3, v2, v6

    new-array v3, v1, [I

    fill-array-data v3, :array_26

    aput-object v3, v2, v7

    new-array v3, v1, [I

    fill-array-data v3, :array_27

    aput-object v3, v2, v8

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_28

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_29

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_2a

    aput-object v3, v2, v6

    new-array v3, v1, [I

    fill-array-data v3, :array_2b

    aput-object v3, v2, v7

    new-array v3, v1, [I

    fill-array-data v3, :array_2c

    aput-object v3, v2, v8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_2d

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_2e

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_2f

    aput-object v3, v2, v6

    new-array v3, v1, [I

    fill-array-data v3, :array_30

    aput-object v3, v2, v7

    new-array v3, v1, [I

    fill-array-data v3, :array_31

    aput-object v3, v2, v8

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_32

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_33

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_34

    aput-object v3, v2, v6

    new-array v3, v1, [I

    fill-array-data v3, :array_35

    aput-object v3, v2, v7

    new-array v3, v1, [I

    fill-array-data v3, :array_36

    aput-object v3, v2, v8

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_37

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_38

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_39

    aput-object v3, v2, v6

    new-array v3, v1, [I

    fill-array-data v3, :array_3a

    aput-object v3, v2, v7

    new-array v3, v1, [I

    fill-array-data v3, :array_3b

    aput-object v3, v2, v8

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_3c

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_3d

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_3e

    aput-object v3, v2, v6

    new-array v3, v1, [I

    fill-array-data v3, :array_3f

    aput-object v3, v2, v7

    new-array v3, v1, [I

    fill-array-data v3, :array_40

    aput-object v3, v2, v8

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_41

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_42

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_43

    aput-object v3, v2, v6

    new-array v3, v1, [I

    fill-array-data v3, :array_44

    aput-object v3, v2, v7

    new-array v1, v1, [I

    fill-array-data v1, :array_45

    aput-object v1, v2, v8

    const/16 v1, 0xd

    aput-object v2, v0, v1

    sput-object v0, Lorg/jline/builtins/Tmux;->WINDOW_CLOCK_TABLE:[[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_16
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_17
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_18
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_19
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1a
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1b
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_1d
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1e
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1f
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_20
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_21
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_22
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_23
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_28
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_29
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_2a
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_2b
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_2c
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_2d
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_2e
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_2f
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_30
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_31
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_32
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_33
    .array-data 4
        0x0
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_34
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_35
    .array-data 4
        0x0
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_36
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_37
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_38
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_39
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_3a
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_3b
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_3c
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_3d
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_3e
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_3f
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_40
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_41
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_42
    .array-data 4
        0x1
        0x1
        0x0
        0x1
        0x1
    .end array-data

    :array_43
    .array-data 4
        0x1
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_44
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_45
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/jline/terminal/Terminal;Ljava/io/PrintStream;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p2, "err"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/terminal/Terminal;",
            "Ljava/io/PrintStream;",
            "Ljava/util/function/Consumer<",
            "Lorg/jline/terminal/Terminal;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    .local p3, "runner":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/jline/terminal/Terminal;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jline/builtins/Tmux;->dirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 176
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jline/builtins/Tmux;->resized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Tmux;->windows:Ljava/util/List;

    .line 183
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/jline/builtins/Tmux;->windowsId:Ljava/lang/Integer;

    .line 184
    iput v0, p0, Lorg/jline/builtins/Tmux;->activeWindow:I

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jline/builtins/Tmux;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 186
    new-instance v0, Lorg/jline/terminal/Size;

    invoke-direct {v0}, Lorg/jline/terminal/Size;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Tmux;->serverOptions:Ljava/util/Map;

    .line 1026
    const/16 v2, 0xf44

    iput v2, p0, Lorg/jline/builtins/Tmux;->ACTIVE_COLOR:I

    .line 1027
    const/16 v2, 0x44f

    iput v2, p0, Lorg/jline/builtins/Tmux;->INACTIVE_COLOR:I

    .line 1028
    iput v2, p0, Lorg/jline/builtins/Tmux;->CLOCK_COLOR:I

    .line 379
    iput-object p1, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    .line 380
    iput-object p2, p0, Lorg/jline/builtins/Tmux;->err:Ljava/io/PrintStream;

    .line 381
    iput-object p3, p0, Lorg/jline/builtins/Tmux;->runner:Ljava/util/function/Consumer;

    .line 382
    new-instance v2, Lorg/jline/utils/Display;

    invoke-direct {v2, p1, v1}, Lorg/jline/utils/Display;-><init>(Lorg/jline/terminal/Terminal;Z)V

    iput-object v2, p0, Lorg/jline/builtins/Tmux;->display:Lorg/jline/utils/Display;

    .line 384
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->max_colors:Lorg/jline/utils/InfoCmp$Capability;

    invoke-interface {p1, v1}, Lorg/jline/terminal/Terminal;->getNumericCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/Integer;

    move-result-object v1

    .line 385
    .local v1, "colors":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x100

    if-lt v2, v3, :cond_0

    const-string v2, "screen-256color"

    goto :goto_0

    :cond_0
    const-string v2, "screen"

    :goto_0
    iput-object v2, p0, Lorg/jline/builtins/Tmux;->term:Ljava/lang/String;

    .line 387
    const-string v2, "prefix"

    const-string v3, "`"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Tmux;->createKeyMap(Ljava/lang/String;)Lorg/jline/keymap/KeyMap;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/builtins/Tmux;->keyMap:Lorg/jline/keymap/KeyMap;

    .line 389
    return-void
.end method

.method static synthetic access$000(Lorg/jline/builtins/Tmux;)Lorg/jline/terminal/Size;
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Tmux;

    .line 67
    iget-object v0, p0, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jline/builtins/Tmux;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Tmux;

    .line 67
    iget-object v0, p0, Lorg/jline/builtins/Tmux;->term:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Ljava/lang/String;CC)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # C
    .param p2, "x2"    # C

    .line 67
    invoke-static {p0, p1, p2}, Lorg/jline/builtins/Tmux;->findMatch(Ljava/lang/String;CC)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/jline/builtins/Tmux;)Lorg/jline/terminal/Terminal;
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Tmux;

    .line 67
    iget-object v0, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jline/builtins/Tmux;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Tmux;

    .line 67
    iget-object v0, p0, Lorg/jline/builtins/Tmux;->windowsId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$402(Lorg/jline/builtins/Tmux;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lorg/jline/builtins/Tmux;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 67
    iput-object p1, p0, Lorg/jline/builtins/Tmux;->windowsId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$600(Lorg/jline/builtins/Tmux;)Ljava/io/PrintStream;
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Tmux;

    .line 67
    iget-object v0, p0, Lorg/jline/builtins/Tmux;->err:Ljava/io/PrintStream;

    return-object v0
.end method

.method static synthetic access$700(Lorg/jline/builtins/Tmux;Lorg/jline/builtins/Tmux$VirtualConsole;)V
    .locals 0
    .param p0, "x0"    # Lorg/jline/builtins/Tmux;
    .param p1, "x1"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 67
    invoke-direct {p0, p1}, Lorg/jline/builtins/Tmux;->close(Lorg/jline/builtins/Tmux$VirtualConsole;)V

    return-void
.end method

.method static synthetic access$800(Lorg/jline/builtins/Tmux;)V
    .locals 0
    .param p0, "x0"    # Lorg/jline/builtins/Tmux;

    .line 67
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->setDirty()V

    return-void
.end method

.method static synthetic access$900(Lorg/jline/builtins/Tmux;)Lorg/jline/utils/Display;
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Tmux;

    .line 67
    iget-object v0, p0, Lorg/jline/builtins/Tmux;->display:Lorg/jline/utils/Display;

    return-object v0
.end method

.method private active()Lorg/jline/builtins/Tmux$VirtualConsole;
    .locals 2

    .line 463
    iget-object v0, p0, Lorg/jline/builtins/Tmux;->windows:Ljava/util/List;

    iget v1, p0, Lorg/jline/builtins/Tmux;->activeWindow:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/Tmux$Window;

    invoke-virtual {v0}, Lorg/jline/builtins/Tmux$Window;->getActive()Lorg/jline/builtins/Tmux$VirtualConsole;

    move-result-object v0

    return-object v0
.end method

.method private addBorder(II)I
    .locals 17
    .param p1, "c"    # I
    .param p2, "oldc"    # I

    .line 1213
    move-object/from16 v0, p0

    move/from16 v1, p2

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 1214
    return p1

    .line 1216
    :cond_0
    const/16 v2, 0x253c

    if-ne v1, v2, :cond_1

    .line 1217
    return v2

    .line 1219
    :cond_1
    const/16 v3, 0x250c

    const/16 v4, 0x2514

    const/16 v5, 0x2518

    const/16 v6, 0x2510

    const/16 v7, 0x2500

    const/16 v8, 0x2502

    const/16 v9, 0x2575

    const/16 v10, 0x2577

    const/16 v11, 0x2576

    const/16 v12, 0x2574

    const/16 v13, 0x251c

    const/16 v14, 0x2534

    const/16 v15, 0x252c

    const/16 v16, 0x2524

    sparse-switch p1, :sswitch_data_0

    .line 1301
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1286
    :sswitch_0
    sparse-switch v1, :sswitch_data_1

    .line 1298
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1296
    :sswitch_1
    return v2

    .line 1295
    :sswitch_2
    return v15

    .line 1294
    :sswitch_3
    return v16

    .line 1293
    :sswitch_4
    return v13

    .line 1292
    :sswitch_5
    return v16

    .line 1291
    :sswitch_6
    return v13

    .line 1290
    :sswitch_7
    return v6

    .line 1289
    :sswitch_8
    return v3

    .line 1287
    :sswitch_9
    return v8

    .line 1288
    :sswitch_a
    return v15

    .line 1271
    :sswitch_b
    sparse-switch v1, :sswitch_data_2

    .line 1283
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1281
    :sswitch_c
    return v14

    .line 1280
    :sswitch_d
    return v15

    .line 1279
    :sswitch_e
    return v2

    .line 1278
    :sswitch_f
    return v13

    .line 1277
    :sswitch_10
    return v14

    .line 1276
    :sswitch_11
    return v4

    .line 1275
    :sswitch_12
    return v15

    .line 1274
    :sswitch_13
    return v3

    .line 1272
    :sswitch_14
    return v13

    .line 1273
    :sswitch_15
    return v7

    .line 1256
    :sswitch_16
    sparse-switch v1, :sswitch_data_3

    .line 1268
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1266
    :sswitch_17
    return v14

    .line 1265
    :sswitch_18
    return v2

    .line 1264
    :sswitch_19
    return v16

    .line 1263
    :sswitch_1a
    return v13

    .line 1262
    :sswitch_1b
    return v5

    .line 1261
    :sswitch_1c
    return v4

    .line 1260
    :sswitch_1d
    return v16

    .line 1259
    :sswitch_1e
    return v13

    .line 1257
    :sswitch_1f
    return v8

    .line 1258
    :sswitch_20
    return v14

    .line 1241
    :sswitch_21
    sparse-switch v1, :sswitch_data_4

    .line 1253
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1251
    :sswitch_22
    return v14

    .line 1250
    :sswitch_23
    return v15

    .line 1249
    :sswitch_24
    return v16

    .line 1248
    :sswitch_25
    return v2

    .line 1247
    :sswitch_26
    return v5

    .line 1246
    :sswitch_27
    return v14

    .line 1245
    :sswitch_28
    return v6

    .line 1244
    :sswitch_29
    return v15

    .line 1242
    :sswitch_2a
    return v16

    .line 1243
    :sswitch_2b
    return v7

    .line 1239
    :sswitch_2c
    invoke-direct {v0, v7, v1}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result v2

    invoke-direct {v0, v9, v2}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result v2

    return v2

    .line 1237
    :sswitch_2d
    invoke-direct {v0, v7, v1}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result v2

    invoke-direct {v0, v10, v2}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result v2

    return v2

    .line 1235
    :sswitch_2e
    invoke-direct {v0, v8, v1}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result v2

    invoke-direct {v0, v12, v2}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result v2

    return v2

    .line 1233
    :sswitch_2f
    invoke-direct {v0, v8, v1}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result v2

    invoke-direct {v0, v11, v2}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result v2

    return v2

    .line 1231
    :sswitch_30
    invoke-direct {v0, v9, v1}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result v2

    invoke-direct {v0, v12, v2}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result v2

    return v2

    .line 1229
    :sswitch_31
    invoke-direct {v0, v9, v1}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result v2

    invoke-direct {v0, v11, v2}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result v2

    return v2

    .line 1227
    :sswitch_32
    invoke-direct {v0, v10, v1}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result v2

    invoke-direct {v0, v12, v2}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result v2

    return v2

    .line 1225
    :sswitch_33
    invoke-direct {v0, v10, v1}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result v2

    invoke-direct {v0, v11, v2}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result v2

    return v2

    .line 1221
    :sswitch_34
    invoke-direct {v0, v9, v1}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result v2

    invoke-direct {v0, v10, v2}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result v2

    return v2

    .line 1223
    :sswitch_35
    invoke-direct {v0, v11, v1}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result v2

    invoke-direct {v0, v12, v2}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result v2

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2500 -> :sswitch_35
        0x2502 -> :sswitch_34
        0x250c -> :sswitch_33
        0x2510 -> :sswitch_32
        0x2514 -> :sswitch_31
        0x2518 -> :sswitch_30
        0x251c -> :sswitch_2f
        0x2524 -> :sswitch_2e
        0x252c -> :sswitch_2d
        0x2534 -> :sswitch_2c
        0x2574 -> :sswitch_21
        0x2575 -> :sswitch_16
        0x2576 -> :sswitch_b
        0x2577 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2500 -> :sswitch_a
        0x2502 -> :sswitch_9
        0x250c -> :sswitch_8
        0x2510 -> :sswitch_7
        0x2514 -> :sswitch_6
        0x2518 -> :sswitch_5
        0x251c -> :sswitch_4
        0x2524 -> :sswitch_3
        0x252c -> :sswitch_2
        0x2534 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2500 -> :sswitch_15
        0x2502 -> :sswitch_14
        0x250c -> :sswitch_13
        0x2510 -> :sswitch_12
        0x2514 -> :sswitch_11
        0x2518 -> :sswitch_10
        0x251c -> :sswitch_f
        0x2524 -> :sswitch_e
        0x252c -> :sswitch_d
        0x2534 -> :sswitch_c
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x2500 -> :sswitch_20
        0x2502 -> :sswitch_1f
        0x250c -> :sswitch_1e
        0x2510 -> :sswitch_1d
        0x2514 -> :sswitch_1c
        0x2518 -> :sswitch_1b
        0x251c -> :sswitch_1a
        0x2524 -> :sswitch_19
        0x252c -> :sswitch_18
        0x2534 -> :sswitch_17
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x2500 -> :sswitch_2b
        0x2502 -> :sswitch_2a
        0x250c -> :sswitch_29
        0x2510 -> :sswitch_28
        0x2514 -> :sswitch_27
        0x2518 -> :sswitch_26
        0x251c -> :sswitch_25
        0x2524 -> :sswitch_24
        0x252c -> :sswitch_23
        0x2534 -> :sswitch_22
    .end sparse-switch
.end method

.method private declared-synchronized close(Lorg/jline/builtins/Tmux$VirtualConsole;)V
    .locals 5
    .param p1, "terminal"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    monitor-enter p0

    .line 559
    const/4 v0, -0x1

    .line 560
    .local v0, "idx":I
    const/4 v1, 0x0

    .line 561
    .local v1, "window":Lorg/jline/builtins/Tmux$Window;
    :try_start_0
    iget-object v2, p0, Lorg/jline/builtins/Tmux;->windows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/builtins/Tmux$Window;

    .line 562
    .local v3, "w":Lorg/jline/builtins/Tmux$Window;
    invoke-virtual {v3}, Lorg/jline/builtins/Tmux$Window;->getPanes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move v0, v4

    .line 563
    if-ltz v0, :cond_0

    .line 564
    move-object v1, v3

    .line 565
    goto :goto_1

    .line 567
    .end local v3    # "w":Lorg/jline/builtins/Tmux$Window;
    :cond_0
    goto :goto_0

    .line 568
    .end local p0    # "this":Lorg/jline/builtins/Tmux;
    :cond_1
    :goto_1
    if-ltz v0, :cond_5

    .line 569
    invoke-virtual {v1, p1}, Lorg/jline/builtins/Tmux$Window;->remove(Lorg/jline/builtins/Tmux$VirtualConsole;)V

    .line 570
    invoke-virtual {v1}, Lorg/jline/builtins/Tmux$Window;->getPanes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 571
    iget-object v2, p0, Lorg/jline/builtins/Tmux;->windows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 572
    iget-object v2, p0, Lorg/jline/builtins/Tmux;->windows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 573
    iget v2, p0, Lorg/jline/builtins/Tmux;->activeWindow:I

    iget-object v4, p0, Lorg/jline/builtins/Tmux;->windows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 574
    iget v2, p0, Lorg/jline/builtins/Tmux;->activeWindow:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/jline/builtins/Tmux;->activeWindow:I

    .line 576
    :cond_2
    sget-object v2, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-direct {p0, v2}, Lorg/jline/builtins/Tmux;->resize(Lorg/jline/terminal/Terminal$Signal;)V

    goto :goto_2

    .line 578
    :cond_3
    iget-object v2, p0, Lorg/jline/builtins/Tmux;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 579
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->setDirty()V

    goto :goto_2

    .line 582
    :cond_4
    sget-object v2, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-direct {p0, v2}, Lorg/jline/builtins/Tmux;->resize(Lorg/jline/terminal/Terminal$Signal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    .line 558
    .end local v0    # "idx":I
    .end local v1    # "window":Lorg/jline/builtins/Tmux$Window;
    .end local p1    # "terminal":Lorg/jline/builtins/Tmux$VirtualConsole;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private drawBorder([JLorg/jline/terminal/Size;Lorg/jline/builtins/Tmux$VirtualConsole;J)V
    .locals 17
    .param p1, "screen"    # [J
    .param p2, "size"    # Lorg/jline/terminal/Size;
    .param p3, "terminal"    # Lorg/jline/builtins/Tmux$VirtualConsole;
    .param p4, "attr"    # J

    .line 1186
    invoke-virtual/range {p3 .. p3}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v0

    .local v0, "i":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lorg/jline/builtins/Tmux$VirtualConsole;->right()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1187
    invoke-virtual/range {p3 .. p3}, Lorg/jline/builtins/Tmux$VirtualConsole;->top()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    .line 1188
    .local v9, "y0":I
    invoke-virtual/range {p3 .. p3}, Lorg/jline/builtins/Tmux$VirtualConsole;->bottom()I

    move-result v10

    .line 1189
    .local v10, "y1":I
    const/16 v8, 0x2500

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v0

    move v5, v9

    move-wide/from16 v6, p4

    invoke-direct/range {v1 .. v8}, Lorg/jline/builtins/Tmux;->drawBorderChar([JLorg/jline/terminal/Size;IIJI)V

    .line 1190
    move v5, v10

    invoke-direct/range {v1 .. v8}, Lorg/jline/builtins/Tmux;->drawBorderChar([JLorg/jline/terminal/Size;IIJI)V

    .line 1186
    .end local v9    # "y0":I
    .end local v10    # "y1":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1192
    .end local v0    # "i":I
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/jline/builtins/Tmux$VirtualConsole;->top()I

    move-result v0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lorg/jline/builtins/Tmux$VirtualConsole;->bottom()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1193
    invoke-virtual/range {p3 .. p3}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    .line 1194
    .local v9, "x0":I
    invoke-virtual/range {p3 .. p3}, Lorg/jline/builtins/Tmux$VirtualConsole;->right()I

    move-result v10

    .line 1195
    .local v10, "x1":I
    const/16 v8, 0x2502

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v9

    move v5, v0

    move-wide/from16 v6, p4

    invoke-direct/range {v1 .. v8}, Lorg/jline/builtins/Tmux;->drawBorderChar([JLorg/jline/terminal/Size;IIJI)V

    .line 1196
    move v4, v10

    invoke-direct/range {v1 .. v8}, Lorg/jline/builtins/Tmux;->drawBorderChar([JLorg/jline/terminal/Size;IIJI)V

    .line 1192
    .end local v9    # "x0":I
    .end local v10    # "x1":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1198
    .end local v0    # "i":I
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual/range {p3 .. p3}, Lorg/jline/builtins/Tmux$VirtualConsole;->top()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    const/16 v8, 0x250c

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v1 .. v8}, Lorg/jline/builtins/Tmux;->drawBorderChar([JLorg/jline/terminal/Size;IIJI)V

    .line 1199
    invoke-virtual/range {p3 .. p3}, Lorg/jline/builtins/Tmux$VirtualConsole;->right()I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Lorg/jline/builtins/Tmux$VirtualConsole;->top()I

    move-result v0

    add-int/lit8 v13, v0, -0x1

    const/16 v16, 0x2510

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-wide/from16 v14, p4

    invoke-direct/range {v9 .. v16}, Lorg/jline/builtins/Tmux;->drawBorderChar([JLorg/jline/terminal/Size;IIJI)V

    .line 1200
    invoke-virtual/range {p3 .. p3}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual/range {p3 .. p3}, Lorg/jline/builtins/Tmux$VirtualConsole;->bottom()I

    move-result v5

    const/16 v8, 0x2514

    invoke-direct/range {v1 .. v8}, Lorg/jline/builtins/Tmux;->drawBorderChar([JLorg/jline/terminal/Size;IIJI)V

    .line 1201
    invoke-virtual/range {p3 .. p3}, Lorg/jline/builtins/Tmux$VirtualConsole;->right()I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Lorg/jline/builtins/Tmux$VirtualConsole;->bottom()I

    move-result v13

    const/16 v16, 0x2518

    invoke-direct/range {v9 .. v16}, Lorg/jline/builtins/Tmux;->drawBorderChar([JLorg/jline/terminal/Size;IIJI)V

    .line 1202
    return-void
.end method

.method private drawBorderChar([JLorg/jline/terminal/Size;IIJI)V
    .locals 4
    .param p1, "screen"    # [J
    .param p2, "size"    # Lorg/jline/terminal/Size;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "attr"    # J
    .param p7, "c"    # I

    .line 1205
    if-ltz p3, :cond_0

    invoke-virtual {p2}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v0

    if-ge p3, v0, :cond_0

    if-ltz p4, :cond_0

    invoke-virtual {p2}, Lorg/jline/terminal/Size;->getRows()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p4, v0, :cond_0

    .line 1206
    invoke-virtual {p2}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v0

    mul-int/2addr v0, p4

    add-int/2addr v0, p3

    aget-wide v0, p1, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    .line 1207
    .local v0, "oldc":I
    invoke-direct {p0, p7, v0}, Lorg/jline/builtins/Tmux;->addBorder(II)I

    move-result p7

    .line 1208
    invoke-virtual {p2}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v1

    mul-int/2addr v1, p4

    add-int/2addr v1, p3

    int-to-long v2, p7

    or-long/2addr v2, p5

    aput-wide v2, p1, v1

    .line 1210
    .end local v0    # "oldc":I
    :cond_0
    return-void
.end method

.method private static findMatch(Ljava/lang/String;CC)I
    .locals 5
    .param p0, "layout"    # Ljava/lang/String;
    .param p1, "c0"    # C
    .param p2, "c1"    # C

    .line 1807
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_4

    .line 1810
    const/4 v0, 0x0

    .line 1811
    .local v0, "nb":I
    const/4 v1, 0x0

    .line 1812
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1813
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1814
    .local v2, "c":C
    if-ne v2, p1, :cond_0

    .line 1815
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1816
    :cond_0
    if-ne v2, p2, :cond_1

    .line 1817
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1

    .line 1818
    return v1

    .line 1821
    :cond_1
    :goto_1
    nop

    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    .line 1822
    goto :goto_0

    .line 1823
    :cond_2
    if-gtz v0, :cond_3

    .line 1826
    return v1

    .line 1824
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No matching \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1808
    .end local v0    # "nb":I
    .end local v1    # "i":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private handleResize()V
    .locals 3

    .line 602
    iget-object v0, p0, Lorg/jline/builtins/Tmux;->resized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    iget-object v1, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v1}, Lorg/jline/terminal/Terminal;->getSize()Lorg/jline/terminal/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 605
    :cond_0
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->window()Lorg/jline/builtins/Tmux$Window;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/builtins/Tmux$Window;->handleResize()V

    .line 606
    return-void
.end method

.method private inputLoop()V
    .locals 10

    .line 499
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/jline/keymap/BindingReader;

    iget-object v2, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v2}, Lorg/jline/terminal/Terminal;->reader()Lorg/jline/utils/NonBlockingReader;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jline/keymap/BindingReader;-><init>(Lorg/jline/utils/NonBlockingReader;)V

    .line 500
    .local v1, "reader":Lorg/jline/keymap/BindingReader;
    const/4 v2, 0x1

    .line 501
    .local v2, "first":Z
    :goto_0
    iget-object v3, p0, Lorg/jline/builtins/Tmux;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 503
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 504
    iget-object v4, p0, Lorg/jline/builtins/Tmux;->keyMap:Lorg/jline/keymap/KeyMap;

    invoke-virtual {v1, v4}, Lorg/jline/keymap/BindingReader;->readBinding(Lorg/jline/keymap/KeyMap;)Ljava/lang/Object;

    move-result-object v4

    .local v4, "b":Ljava/lang/Object;
    goto :goto_1

    .line 505
    .end local v4    # "b":Ljava/lang/Object;
    :cond_0
    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Lorg/jline/keymap/BindingReader;->peekCharacter(J)I

    move-result v4

    if-ltz v4, :cond_1

    .line 506
    iget-object v4, p0, Lorg/jline/builtins/Tmux;->keyMap:Lorg/jline/keymap/KeyMap;

    invoke-virtual {v1, v4, v3, v0}, Lorg/jline/keymap/BindingReader;->readBinding(Lorg/jline/keymap/KeyMap;Lorg/jline/keymap/KeyMap;Z)Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "b":Ljava/lang/Object;
    goto :goto_1

    .line 508
    .end local v4    # "b":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    .line 510
    .restart local v4    # "b":Ljava/lang/Object;
    :goto_1
    sget-object v5, Lorg/jline/builtins/Tmux$Binding;->SelfInsert:Lorg/jline/builtins/Tmux$Binding;

    if-ne v4, v5, :cond_4

    .line 511
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->active()Lorg/jline/builtins/Tmux$VirtualConsole;

    move-result-object v5

    invoke-static {v5}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$1000(Lorg/jline/builtins/Tmux$VirtualConsole;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 512
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->active()Lorg/jline/builtins/Tmux$VirtualConsole;

    move-result-object v5

    invoke-static {v5, v0}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$1002(Lorg/jline/builtins/Tmux$VirtualConsole;Z)Z

    .line 513
    iget-object v5, p0, Lorg/jline/builtins/Tmux;->clockFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->panes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 514
    iget-object v5, p0, Lorg/jline/builtins/Tmux;->clockFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v5, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 515
    iput-object v3, p0, Lorg/jline/builtins/Tmux;->clockFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 517
    :cond_2
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->setDirty()V

    goto/16 :goto_6

    .line 519
    :cond_3
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->active()Lorg/jline/builtins/Tmux$VirtualConsole;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jline/builtins/Tmux$VirtualConsole;->getMasterInputOutput()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v1}, Lorg/jline/keymap/BindingReader;->getLastBinding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 520
    const/4 v2, 0x0

    goto :goto_6

    .line 523
    :cond_4
    if-eqz v2, :cond_5

    .line 524
    const/4 v2, 0x0

    goto :goto_2

    .line 526
    :cond_5
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->active()Lorg/jline/builtins/Tmux$VirtualConsole;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jline/builtins/Tmux$VirtualConsole;->getMasterInputOutput()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 527
    const/4 v2, 0x1

    .line 529
    :goto_2
    sget-object v3, Lorg/jline/builtins/Tmux$Binding;->Mouse:Lorg/jline/builtins/Tmux$Binding;

    if-ne v4, v3, :cond_7

    .line 530
    iget-object v3, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v3}, Lorg/jline/terminal/Terminal;->readMouseEvent()Lorg/jline/terminal/MouseEvent;

    .line 532
    :cond_6
    goto :goto_6

    :cond_7
    instance-of v3, v4, Ljava/lang/String;

    if-nez v3, :cond_8

    instance-of v3, v4, [Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 533
    :cond_8
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 534
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 535
    .local v5, "err":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/PrintStream;

    invoke-direct {v6, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 536
    .local v6, "pout":Ljava/io/PrintStream;
    :try_start_2
    new-instance v7, Ljava/io/PrintStream;

    invoke-direct {v7, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 537
    .local v7, "perr":Ljava/io/PrintStream;
    :try_start_3
    instance-of v8, v4, Ljava/lang/String;

    if-eqz v8, :cond_9

    .line 538
    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v6, v7, v8}, Lorg/jline/builtins/Tmux;->execute(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/lang/String;)V

    goto :goto_3

    .line 540
    :cond_9
    move-object v8, v4

    check-cast v8, [Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Lorg/jline/builtins/Tmux;->execute(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 542
    :goto_3
    :try_start_4
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v7    # "perr":Ljava/io/PrintStream;
    :try_start_5
    invoke-virtual {v6}, Ljava/io/PrintStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 544
    .end local v6    # "pout":Ljava/io/PrintStream;
    goto :goto_6

    .line 535
    .restart local v6    # "pout":Ljava/io/PrintStream;
    .restart local v7    # "perr":Ljava/io/PrintStream;
    :catchall_0
    move-exception v8

    :try_start_6
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v9

    :try_start_7
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "reader":Lorg/jline/keymap/BindingReader;
    .end local v2    # "first":Z
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "b":Ljava/lang/Object;
    .end local v5    # "err":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "pout":Ljava/io/PrintStream;
    :goto_4
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v7    # "perr":Ljava/io/PrintStream;
    .restart local v1    # "reader":Lorg/jline/keymap/BindingReader;
    .restart local v2    # "first":Z
    .restart local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "b":Ljava/lang/Object;
    .restart local v5    # "err":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "pout":Ljava/io/PrintStream;
    :catchall_2
    move-exception v7

    :try_start_8
    invoke-virtual {v6}, Ljava/io/PrintStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v8

    :try_start_9
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "reader":Lorg/jline/keymap/BindingReader;
    .end local v2    # "first":Z
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "b":Ljava/lang/Object;
    .end local v5    # "err":Ljava/io/ByteArrayOutputStream;
    :goto_5
    throw v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 542
    .end local v6    # "pout":Ljava/io/PrintStream;
    .restart local v1    # "reader":Lorg/jline/keymap/BindingReader;
    .restart local v2    # "first":Z
    .restart local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "b":Ljava/lang/Object;
    .restart local v5    # "err":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v6

    .line 547
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "b":Ljava/lang/Object;
    .end local v5    # "err":Ljava/io/ByteArrayOutputStream;
    :goto_6
    goto/16 :goto_0

    .line 501
    .end local v1    # "reader":Lorg/jline/keymap/BindingReader;
    .end local v2    # "first":Z
    :cond_a
    goto :goto_7

    .line 553
    :catchall_4
    move-exception v1

    goto :goto_8

    .line 548
    :catch_1
    move-exception v1

    .line 549
    .local v1, "e":Ljava/io/IOException;
    :try_start_a
    iget-object v2, p0, Lorg/jline/builtins/Tmux;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 550
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error in tmux input loop"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Lorg/jline/utils/Log;->info([Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 553
    .end local v1    # "e":Ljava/io/IOException;
    :cond_b
    :goto_7
    iget-object v1, p0, Lorg/jline/builtins/Tmux;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 554
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->setDirty()V

    .line 555
    nop

    .line 556
    return-void

    .line 553
    :goto_8
    iget-object v2, p0, Lorg/jline/builtins/Tmux;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 554
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->setDirty()V

    .line 555
    throw v1
.end method

.method private interrupt(Lorg/jline/terminal/Terminal$Signal;)V
    .locals 1
    .param p1, "signal"    # Lorg/jline/terminal/Terminal$Signal;

    .line 593
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->active()Lorg/jline/builtins/Tmux$VirtualConsole;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/builtins/Tmux$VirtualConsole;->getConsole()Lorg/jline/terminal/impl/LineDisciplineTerminal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    .line 594
    return-void
.end method

.method static synthetic lambda$inputLoop$0(Lorg/jline/builtins/Tmux$VirtualConsole;)Z
    .locals 1
    .param p0, "vc"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 513
    invoke-static {p0}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$1000(Lorg/jline/builtins/Tmux$VirtualConsole;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$listKeys$2(Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 859
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method

.method static synthetic lambda$listKeys$3(Ljava/lang/String;Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 861
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 862
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 863
    .local v1, "val":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 864
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "bind-key -T "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 866
    const-string v3, "prefix "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 869
    :cond_0
    const-string v3, "root   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    :goto_0
    invoke-static {v0}, Lorg/jline/keymap/KeyMap;->display(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    .line 873
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 875
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private panes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jline/builtins/Tmux$VirtualConsole;",
            ">;"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lorg/jline/builtins/Tmux;->windows:Ljava/util/List;

    iget v1, p0, Lorg/jline/builtins/Tmux;->activeWindow:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/Tmux$Window;

    invoke-virtual {v0}, Lorg/jline/builtins/Tmux$Window;->getPanes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private print([JLorg/jline/builtins/Tmux$VirtualConsole;Ljava/lang/String;I)V
    .locals 16
    .param p1, "screen"    # [J
    .param p2, "terminal"    # Lorg/jline/builtins/Tmux$VirtualConsole;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "color"    # I

    .line 1138
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual/range {p2 .. p2}, Lorg/jline/builtins/Tmux$VirtualConsole;->height()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_4

    .line 1139
    int-to-long v5, v2

    const/16 v3, 0x20

    shl-long/2addr v5, v3

    const-wide/high16 v7, 0x2000000000000000L

    or-long/2addr v5, v7

    .line 1140
    .local v5, "attr":J
    invoke-virtual/range {p2 .. p2}, Lorg/jline/builtins/Tmux$VirtualConsole;->height()I

    move-result v3

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 1141
    .local v3, "yoff":I
    invoke-virtual/range {p2 .. p2}, Lorg/jline/builtins/Tmux$VirtualConsole;->width()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x6

    sub-int/2addr v4, v7

    div-int/lit8 v4, v4, 0x2

    .line 1142
    .local v4, "xoff":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 1143
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1145
    .local v8, "ch":C
    sparse-switch v8, :sswitch_data_0

    .line 1160
    const/4 v9, -0x1

    .local v9, "idx":I
    goto :goto_1

    .line 1158
    .end local v9    # "idx":I
    :sswitch_0
    const/16 v9, 0xc

    .restart local v9    # "idx":I
    goto :goto_1

    .line 1159
    .end local v9    # "idx":I
    :sswitch_1
    const/16 v9, 0xd

    .restart local v9    # "idx":I
    goto :goto_1

    .line 1157
    .end local v9    # "idx":I
    :sswitch_2
    const/16 v9, 0xb

    .restart local v9    # "idx":I
    goto :goto_1

    .line 1156
    .end local v9    # "idx":I
    :sswitch_3
    const/16 v9, 0xa

    .restart local v9    # "idx":I
    goto :goto_1

    .line 1155
    .end local v9    # "idx":I
    :sswitch_4
    add-int/lit8 v9, v8, -0x30

    .line 1162
    .restart local v9    # "idx":I
    :goto_1
    if-ltz v9, :cond_2

    .line 1163
    sget-object v10, Lorg/jline/builtins/Tmux;->WINDOW_CLOCK_TABLE:[[[I

    aget-object v10, v10, v9

    .line 1164
    .local v10, "data":[[I
    const/4 v11, 0x0

    .local v11, "y":I
    :goto_2
    array-length v12, v10

    if-ge v11, v12, :cond_2

    .line 1165
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_3
    aget-object v13, v10, v11

    array-length v13, v13

    if-ge v12, v13, :cond_1

    .line 1166
    aget-object v13, v10, v11

    aget v13, v13, v12

    if-eqz v13, :cond_0

    .line 1167
    invoke-static/range {p2 .. p2}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$1200(Lorg/jline/builtins/Tmux$VirtualConsole;)I

    move-result v13

    add-int/2addr v13, v3

    add-int/2addr v13, v11

    iget-object v14, v0, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v14}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v14

    mul-int/2addr v13, v14

    invoke-virtual/range {p2 .. p2}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v13, v4

    add-int/2addr v13, v12

    mul-int/lit8 v14, v7, 0x6

    add-int/2addr v13, v14

    .line 1168
    .local v13, "off":I
    const-wide/16 v14, 0x20

    or-long/2addr v14, v5

    aput-wide v14, p1, v13

    .line 1165
    .end local v13    # "off":I
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1164
    .end local v12    # "x":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1142
    .end local v8    # "ch":C
    .end local v9    # "idx":I
    .end local v10    # "data":[[I
    .end local v11    # "y":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1174
    .end local v3    # "yoff":I
    .end local v4    # "xoff":I
    .end local v5    # "attr":J
    .end local v7    # "i":I
    :cond_3
    goto :goto_5

    .line 1175
    :cond_4
    int-to-long v3, v2

    const/16 v5, 0x2c

    shl-long/2addr v3, v5

    const-wide/high16 v5, 0x1000000000000000L

    or-long/2addr v3, v5

    .line 1176
    .local v3, "attr":J
    invoke-virtual/range {p2 .. p2}, Lorg/jline/builtins/Tmux$VirtualConsole;->height()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x2

    .line 1177
    .local v5, "yoff":I
    invoke-virtual/range {p2 .. p2}, Lorg/jline/builtins/Tmux$VirtualConsole;->width()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 1178
    .local v6, "xoff":I
    invoke-static/range {p2 .. p2}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$1200(Lorg/jline/builtins/Tmux$VirtualConsole;)I

    move-result v7

    add-int/2addr v7, v5

    iget-object v8, v0, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v8}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual/range {p2 .. p2}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    .line 1179
    .local v7, "off":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 1180
    add-int v9, v7, v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-long v10, v10

    or-long/2addr v10, v3

    aput-wide v10, p1, v9

    .line 1179
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1183
    .end local v3    # "attr":J
    .end local v5    # "yoff":I
    .end local v6    # "xoff":I
    .end local v7    # "off":I
    .end local v8    # "i":I
    :cond_5
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_4
        0x31 -> :sswitch_4
        0x32 -> :sswitch_4
        0x33 -> :sswitch_4
        0x34 -> :sswitch_4
        0x35 -> :sswitch_4
        0x36 -> :sswitch_4
        0x37 -> :sswitch_4
        0x38 -> :sswitch_4
        0x39 -> :sswitch_4
        0x3a -> :sswitch_3
        0x41 -> :sswitch_2
        0x4d -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private redrawLoop()V
    .locals 4

    .line 475
    :goto_0
    iget-object v0, p0, Lorg/jline/builtins/Tmux;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    :try_start_0
    iget-object v0, p0, Lorg/jline/builtins/Tmux;->dirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_1
    :try_start_1
    iget-object v1, p0, Lorg/jline/builtins/Tmux;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jline/builtins/Tmux;->dirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 479
    iget-object v1, p0, Lorg/jline/builtins/Tmux;->dirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 481
    :cond_0
    monitor-exit v0

    .line 484
    goto :goto_2

    .line 481
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 485
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_2
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->handleResize()V

    .line 486
    invoke-virtual {p0}, Lorg/jline/builtins/Tmux;->redraw()V

    goto :goto_0

    .line 488
    :cond_1
    return-void
.end method

.method private resize(Lorg/jline/terminal/Terminal$Signal;)V
    .locals 2
    .param p1, "signal"    # Lorg/jline/terminal/Terminal$Signal;

    .line 588
    iget-object v0, p0, Lorg/jline/builtins/Tmux;->resized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 589
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->setDirty()V

    .line 590
    return-void
.end method

.method private setDirty()V
    .locals 3

    .line 491
    iget-object v0, p0, Lorg/jline/builtins/Tmux;->dirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 492
    :try_start_0
    iget-object v1, p0, Lorg/jline/builtins/Tmux;->dirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 493
    iget-object v1, p0, Lorg/jline/builtins/Tmux;->dirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 494
    monitor-exit v0

    .line 495
    return-void

    .line 494
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private suspend(Lorg/jline/terminal/Terminal$Signal;)V
    .locals 1
    .param p1, "signal"    # Lorg/jline/terminal/Terminal$Signal;

    .line 597
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->active()Lorg/jline/builtins/Tmux$VirtualConsole;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/builtins/Tmux$VirtualConsole;->getConsole()Lorg/jline/terminal/impl/LineDisciplineTerminal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    .line 598
    return-void
.end method

.method private window()Lorg/jline/builtins/Tmux$Window;
    .locals 2

    .line 471
    iget-object v0, p0, Lorg/jline/builtins/Tmux;->windows:Ljava/util/List;

    iget v1, p0, Lorg/jline/builtins/Tmux;->activeWindow:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/Tmux$Window;

    return-object v0
.end method


# virtual methods
.method protected bindKey(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V
    .locals 8
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/io/PrintStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 808
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "bind-key - "

    const-string v1, "Usage: bind-key key command [arguments]"

    const-string v2, "  -? --help                    Show help"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->setOptionsFirst(Z)Lorg/jline/builtins/Options;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/jline/builtins/Options;->parse(Ljava/util/List;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 814
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v2, "help"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 817
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v2

    .line 818
    .local v2, "vargs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 821
    iget-object v3, p0, Lorg/jline/builtins/Tmux;->serverOptions:Ljava/util/Map;

    const-string v5, "prefix"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 822
    .local v3, "prefix":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 823
    .local v5, "key":Ljava/lang/String;
    iget-object v7, p0, Lorg/jline/builtins/Tmux;->keyMap:Lorg/jline/keymap/KeyMap;

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/jline/keymap/KeyMap;->unbind(Ljava/lang/CharSequence;)V

    .line 824
    iget-object v4, p0, Lorg/jline/builtins/Tmux;->keyMap:Lorg/jline/keymap/KeyMap;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 825
    return-void

    .line 819
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    :cond_0
    new-instance v3, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 815
    .end local v2    # "vargs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected clockMode(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V
    .locals 16
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/io/PrintStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 903
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    const-string v1, "clock-mode - "

    const-string v2, "Usage: clock-mode"

    const-string v3, "  -? --help                    Show help"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 908
    .local v1, "usage":[Ljava/lang/String;
    invoke-static {v1}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v2

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Lorg/jline/builtins/Options;->parse(Ljava/util/List;)Lorg/jline/builtins/Options;

    move-result-object v2

    .line 909
    .local v2, "opt":Lorg/jline/builtins/Options;
    const-string v4, "help"

    invoke-virtual {v2, v4}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 912
    invoke-direct/range {p0 .. p0}, Lorg/jline/builtins/Tmux;->active()Lorg/jline/builtins/Tmux$VirtualConsole;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$1002(Lorg/jline/builtins/Tmux$VirtualConsole;Z)Z

    .line 914
    iget-object v4, v0, Lorg/jline/builtins/Tmux;->clockFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_0

    .line 915
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v5

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v5, v6}, Ljava/time/Instant;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v5

    const-wide/16 v6, 0x3c

    invoke-virtual {v5, v6, v7}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v5

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v4, v5, v6}, Ljava/time/Instant;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v4

    .line 916
    .local v4, "initial":J
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v14

    .line 917
    .local v14, "delay":J
    iget-object v7, v0, Lorg/jline/builtins/Tmux;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda0;-><init>(Lorg/jline/builtins/Tmux;)V

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v9, v4

    move-wide v11, v14

    invoke-interface/range {v7 .. v13}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v6

    iput-object v6, v0, Lorg/jline/builtins/Tmux;->clockFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 919
    .end local v4    # "initial":J
    .end local v14    # "delay":J
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/jline/builtins/Tmux;->setDirty()V

    .line 920
    return-void

    .line 910
    :cond_1
    new-instance v4, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v2}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected createEmptyKeyMap(Ljava/lang/String;)Lorg/jline/keymap/KeyMap;
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/jline/keymap/KeyMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 417
    new-instance v0, Lorg/jline/keymap/KeyMap;

    invoke-direct {v0}, Lorg/jline/keymap/KeyMap;-><init>()V

    .line 418
    .local v0, "keyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Ljava/lang/Object;>;"
    sget-object v1, Lorg/jline/builtins/Tmux$Binding;->SelfInsert:Lorg/jline/builtins/Tmux$Binding;

    invoke-virtual {v0, v1}, Lorg/jline/keymap/KeyMap;->setUnicode(Ljava/lang/Object;)V

    .line 419
    sget-object v1, Lorg/jline/builtins/Tmux$Binding;->SelfInsert:Lorg/jline/builtins/Tmux$Binding;

    invoke-virtual {v0, v1}, Lorg/jline/keymap/KeyMap;->setNomatch(Ljava/lang/Object;)V

    .line 420
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xff

    if-ge v1, v2, :cond_0

    .line 421
    sget-object v2, Lorg/jline/builtins/Tmux$Binding;->Discard:Lorg/jline/builtins/Tmux$Binding;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-char v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Lorg/jline/builtins/Tmux$Binding;->Mouse:Lorg/jline/builtins/Tmux$Binding;

    iget-object v2, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_mouse:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 424
    return-object v0
.end method

.method protected createKeyMap(Ljava/lang/String;)Lorg/jline/keymap/KeyMap;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/jline/keymap/KeyMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 392
    invoke-virtual {p0, p1}, Lorg/jline/builtins/Tmux;->createEmptyKeyMap(Ljava/lang/String;)Lorg/jline/keymap/KeyMap;

    move-result-object v0

    .line 393
    .local v0, "keyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "send-prefix"

    invoke-virtual {v0, v2, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "split-window -v"

    invoke-virtual {v0, v2, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "split-window -h"

    invoke-virtual {v0, v2, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_up:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "select-pane -U"

    invoke-virtual {v0, v2, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_down:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "select-pane -D"

    invoke-virtual {v0, v2, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_left:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "select-pane -L"

    invoke-virtual {v0, v2, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_right:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "select-pane -R"

    invoke-virtual {v0, v2, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/jline/keymap/KeyMap;->esc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_up:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resize-pane -U 5"

    invoke-virtual {v0, v2, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/jline/keymap/KeyMap;->esc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_down:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resize-pane -D 5"

    invoke-virtual {v0, v2, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/jline/keymap/KeyMap;->esc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_left:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resize-pane -L 5"

    invoke-virtual {v0, v2, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/jline/keymap/KeyMap;->esc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_right:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resize-pane -R 5"

    invoke-virtual {v0, v2, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 404
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/CharSequence;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "^[[1;5A"

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "^[[A"

    invoke-static {v5}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "resize-pane -U"

    invoke-virtual {v0, v3, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 405
    new-array v2, v1, [Ljava/lang/CharSequence;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "^[[1;5B"

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "^[[B"

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "resize-pane -D"

    invoke-virtual {v0, v3, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 406
    new-array v2, v1, [Ljava/lang/CharSequence;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "^[[1;5C"

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "^[[C"

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "resize-pane -L"

    invoke-virtual {v0, v3, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 407
    new-array v1, v1, [Ljava/lang/CharSequence;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "^[[1;5D"

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "^[[D"

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "resize-pane -R"

    invoke-virtual {v0, v2, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "display-panes"

    invoke-virtual {v0, v2, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clock-mode"

    invoke-virtual {v0, v2, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "new-window"

    invoke-virtual {v0, v2, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "next-window"

    invoke-virtual {v0, v2, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "previous-window"

    invoke-virtual {v0, v2, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 413
    return-object v0
.end method

.method protected displayPanes(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V
    .locals 7
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/io/PrintStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 923
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "display-panes - "

    const-string v1, "Usage: display-panes"

    const-string v2, "  -? --help                    Show help"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 928
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/jline/builtins/Options;->parse(Ljava/util/List;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 929
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v2, "help"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 932
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jline/builtins/Tmux;->identify:Z

    .line 933
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->setDirty()V

    .line 934
    iget-object v2, p0, Lorg/jline/builtins/Tmux;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda6;-><init>(Lorg/jline/builtins/Tmux;)V

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 938
    return-void

    .line 930
    :cond_0
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public execute(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .param p3, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 609
    new-instance v0, Lorg/jline/reader/impl/DefaultParser;

    invoke-direct {v0}, Lorg/jline/reader/impl/DefaultParser;-><init>()V

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jline/reader/impl/DefaultParser;->parse(Ljava/lang/String;I)Lorg/jline/reader/ParsedLine;

    move-result-object v0

    .line 610
    .local v0, "line":Lorg/jline/reader/ParsedLine;
    invoke-interface {v0}, Lorg/jline/reader/ParsedLine;->words()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lorg/jline/builtins/Tmux;->execute(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V

    .line 611
    return-void
.end method

.method public declared-synchronized execute(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V
    .locals 6
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/io/PrintStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .local p3, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 614
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 615
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {p3, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 616
    .local v2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .end local p0    # "this":Lorg/jline/builtins/Tmux;
    :cond_0
    goto/16 :goto_0

    .restart local p0    # "this":Lorg/jline/builtins/Tmux;
    :sswitch_0
    const-string v0, "selectp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto/16 :goto_1

    .end local p0    # "this":Lorg/jline/builtins/Tmux;
    :sswitch_1
    const-string v0, "set-option"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "display-panes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "resizep"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "clock-mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "bind-key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "previous-window"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "displayp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "next-window"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "select-pane"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "send"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "prev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "next"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "neww"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "bind"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "set"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "lsw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "lsk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "send-keys"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "new-window"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_14
    const-string v0, "list-windows"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_1

    :sswitch_15
    const-string v0, "unbind"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_16
    const-string v0, "splitw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_17
    const-string v0, "resize-pane"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_18
    const-string v0, "list-keys"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_19
    const-string v0, "split-window"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_1a
    const-string v3, "send-prefix"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :sswitch_1b
    const-string v0, "unbind-key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 673
    :pswitch_0
    invoke-virtual {p0, p1, p2, v2}, Lorg/jline/builtins/Tmux;->listWindows(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V

    goto :goto_2

    .line 669
    :pswitch_1
    invoke-virtual {p0, p1, p2, v2}, Lorg/jline/builtins/Tmux;->previousWindow(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V

    .line 670
    goto :goto_2

    .line 665
    :pswitch_2
    invoke-virtual {p0, p1, p2, v2}, Lorg/jline/builtins/Tmux;->nextWindow(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V

    .line 666
    goto :goto_2

    .line 661
    :pswitch_3
    invoke-virtual {p0, p1, p2, v2}, Lorg/jline/builtins/Tmux;->newWindow(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V

    .line 662
    goto :goto_2

    .line 657
    :pswitch_4
    invoke-virtual {p0, p1, p2, v2}, Lorg/jline/builtins/Tmux;->setOption(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V

    .line 658
    goto :goto_2

    .line 653
    :pswitch_5
    invoke-virtual {p0, p1, p2, v2}, Lorg/jline/builtins/Tmux;->sendKeys(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V

    .line 654
    goto :goto_2

    .line 649
    :pswitch_6
    invoke-virtual {p0, p1, p2, v2}, Lorg/jline/builtins/Tmux;->listKeys(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V

    .line 650
    goto :goto_2

    .line 645
    :pswitch_7
    invoke-virtual {p0, p1, p2, v2}, Lorg/jline/builtins/Tmux;->unbindKey(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V

    .line 646
    goto :goto_2

    .line 641
    :pswitch_8
    invoke-virtual {p0, p1, p2, v2}, Lorg/jline/builtins/Tmux;->bindKey(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V

    .line 642
    goto :goto_2

    .line 637
    :pswitch_9
    invoke-virtual {p0, p1, p2, v2}, Lorg/jline/builtins/Tmux;->clockMode(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V

    .line 638
    goto :goto_2

    .line 634
    :pswitch_a
    invoke-virtual {p0, p1, p2, v2}, Lorg/jline/builtins/Tmux;->displayPanes(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V

    .line 635
    goto :goto_2

    .line 630
    :pswitch_b
    invoke-virtual {p0, p1, p2, v2}, Lorg/jline/builtins/Tmux;->resizePane(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V

    .line 631
    goto :goto_2

    .line 626
    :pswitch_c
    invoke-virtual {p0, p1, p2, v2}, Lorg/jline/builtins/Tmux;->selectPane(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V

    .line 627
    goto :goto_2

    .line 622
    :pswitch_d
    invoke-virtual {p0, p1, p2, v2}, Lorg/jline/builtins/Tmux;->splitWindow(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V

    .line 623
    goto :goto_2

    .line 618
    :pswitch_e
    invoke-virtual {p0, p1, p2, v2}, Lorg/jline/builtins/Tmux;->sendPrefix(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    nop

    .line 676
    :goto_2
    monitor-exit p0

    return-void

    .line 613
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "out":Ljava/io/PrintStream;
    .end local p2    # "err":Ljava/io/PrintStream;
    .end local p3    # "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d19c998 -> :sswitch_1b
        -0x60dfbb89 -> :sswitch_1a
        -0x588aa5fd -> :sswitch_19
        -0x4bbaae3d -> :sswitch_18
        -0x3655471f -> :sswitch_17
        -0x3565b763 -> :sswitch_16
        -0x321cc1aa -> :sswitch_15
        -0x303c47ac -> :sswitch_14
        -0x22417743 -> :sswitch_13
        -0x12d0ae7 -> :sswitch_12
        0x1a3c4 -> :sswitch_11
        0x1a3d0 -> :sswitch_10
        0x1bc62 -> :sswitch_f
        0x2e243d -> :sswitch_e
        0x338ad7 -> :sswitch_d
        0x338af3 -> :sswitch_c
        0x34a233 -> :sswitch_b
        0x35cf88 -> :sswitch_a
        0xa150d99 -> :sswitch_9
        0xadf140a -> :sswitch_8
        0x10fdffee -> :sswitch_7
        0x12ed9786 -> :sswitch_6
        0x37edd0cf -> :sswitch_5
        0x3e34d802 -> :sswitch_4
        0x4165fa3c -> :sswitch_3
        0x530e1d40 -> :sswitch_2
        0x5e48e440 -> :sswitch_1
        0x75e76af4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$displayPanes$4$org-jline-builtins-Tmux()V
    .locals 1

    .line 935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/builtins/Tmux;->identify:Z

    .line 936
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->setDirty()V

    .line 937
    return-void
.end method

.method synthetic lambda$listWindows$1$org-jline-builtins-Tmux(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 692
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    iget-object v1, p0, Lorg/jline/builtins/Tmux;->windows:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/builtins/Tmux$Window;

    invoke-virtual {v1}, Lorg/jline/builtins/Tmux$Window;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    iget v1, p0, Lorg/jline/builtins/Tmux;->activeWindow:I

    if-ne p1, v1, :cond_0

    const-string v1, "* "

    goto :goto_0

    :cond_0
    const-string v1, " "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    iget-object v1, p0, Lorg/jline/builtins/Tmux;->windows:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/builtins/Tmux$Window;

    invoke-virtual {v1}, Lorg/jline/builtins/Tmux$Window;->getPanes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 697
    const-string v1, " panes)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    iget v1, p0, Lorg/jline/builtins/Tmux;->activeWindow:I

    if-ne p1, v1, :cond_1

    .line 699
    const-string v1, " (active)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected layoutResize()V
    .locals 0

    .line 1024
    return-void
.end method

.method protected listKeys(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V
    .locals 5
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/io/PrintStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 848
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "list-keys - "

    const-string v1, "Usage: list-keys "

    const-string v2, "  -? --help                    Show help"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/jline/builtins/Options;->parse(Ljava/util/List;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 854
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v2, "help"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 857
    iget-object v2, p0, Lorg/jline/builtins/Tmux;->serverOptions:Ljava/util/Map;

    const-string v3, "prefix"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 858
    .local v2, "prefix":Ljava/lang/String;
    iget-object v3, p0, Lorg/jline/builtins/Tmux;->keyMap:Lorg/jline/keymap/KeyMap;

    invoke-virtual {v3}, Lorg/jline/keymap/KeyMap;->getBoundKeys()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda2;-><init>()V

    .line 859
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2}, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 860
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 878
    invoke-interface {v3}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v3

    .line 879
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/jline/builtins/Commands$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1}, Lorg/jline/builtins/Commands$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintStream;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 880
    return-void

    .line 855
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_0
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected listWindows(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V
    .locals 4
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/io/PrintStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 679
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "list-windows - "

    const-string v1, "Usage: list-windows"

    const-string v2, "  -? --help                    Show help"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/jline/builtins/Options;->parse(Ljava/util/List;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 685
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v2, "help"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 688
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jline/builtins/Tmux;->windows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda5;-><init>(Lorg/jline/builtins/Tmux;)V

    .line 689
    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 703
    invoke-interface {v2}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v2

    .line 704
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/jline/builtins/Commands$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Lorg/jline/builtins/Commands$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintStream;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 705
    return-void

    .line 686
    :cond_0
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected newWindow(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V
    .locals 4
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/io/PrintStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 746
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "new-window - "

    const-string v1, "Usage: new-window"

    const-string v2, "  -? --help                    Show help"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/jline/builtins/Options;->parse(Ljava/util/List;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 752
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v2, "help"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 755
    iget-object v2, p0, Lorg/jline/builtins/Tmux;->windows:Ljava/util/List;

    new-instance v3, Lorg/jline/builtins/Tmux$Window;

    invoke-direct {v3, p0, p0}, Lorg/jline/builtins/Tmux$Window;-><init>(Lorg/jline/builtins/Tmux;Lorg/jline/builtins/Tmux;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v2, p0, Lorg/jline/builtins/Tmux;->windows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jline/builtins/Tmux;->activeWindow:I

    .line 757
    iget-object v2, p0, Lorg/jline/builtins/Tmux;->runner:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->active()Lorg/jline/builtins/Tmux$VirtualConsole;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jline/builtins/Tmux$VirtualConsole;->getConsole()Lorg/jline/terminal/impl/LineDisciplineTerminal;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 758
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->setDirty()V

    .line 759
    return-void

    .line 753
    :cond_0
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected nextWindow(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V
    .locals 4
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/io/PrintStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 727
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "next-window - "

    const-string v1, "Usage: next-window"

    const-string v2, "  -? --help                    Show help"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/jline/builtins/Options;->parse(Ljava/util/List;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 733
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v2, "help"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 736
    iget-object v2, p0, Lorg/jline/builtins/Tmux;->windows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 737
    iget v2, p0, Lorg/jline/builtins/Tmux;->activeWindow:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/jline/builtins/Tmux;->activeWindow:I

    .line 738
    iget-object v3, p0, Lorg/jline/builtins/Tmux;->windows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 739
    const/4 v2, 0x0

    iput v2, p0, Lorg/jline/builtins/Tmux;->activeWindow:I

    .line 741
    :cond_0
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->setDirty()V

    .line 743
    :cond_1
    return-void

    .line 734
    :cond_2
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected previousWindow(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V
    .locals 4
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/io/PrintStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 708
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "previous-window - "

    const-string v1, "Usage: previous-window"

    const-string v2, "  -? --help                    Show help"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/jline/builtins/Options;->parse(Ljava/util/List;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 714
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v2, "help"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 717
    iget-object v2, p0, Lorg/jline/builtins/Tmux;->windows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 718
    iget v2, p0, Lorg/jline/builtins/Tmux;->activeWindow:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/jline/builtins/Tmux;->activeWindow:I

    .line 719
    if-gez v2, :cond_0

    .line 720
    iget-object v2, p0, Lorg/jline/builtins/Tmux;->windows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/jline/builtins/Tmux;->activeWindow:I

    .line 722
    :cond_0
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->setDirty()V

    .line 724
    :cond_1
    return-void

    .line 715
    :cond_2
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected declared-synchronized redraw()V
    .locals 34

    move-object/from16 v7, p0

    monitor-enter p0

    .line 1031
    :try_start_0
    iget-object v0, v7, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v0}, Lorg/jline/terminal/Size;->getRows()I

    move-result v0

    iget-object v1, v7, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v1}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [J

    .line 1033
    .local v0, "screen":[J
    const-wide/16 v1, 0x20

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 1034
    const/4 v1, 0x2

    new-array v1, v1, [I

    move-object v15, v1

    .line 1035
    .local v15, "cursor":[I
    invoke-direct/range {p0 .. p0}, Lorg/jline/builtins/Tmux;->panes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/builtins/Tmux$VirtualConsole;

    move-object v5, v1

    .line 1036
    .local v5, "terminal":Lorg/jline/builtins/Tmux$VirtualConsole;
    invoke-static {v5}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$1000(Lorg/jline/builtins/Tmux$VirtualConsole;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1037
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1038
    .local v1, "str":Ljava/lang/String;
    iget v2, v7, Lorg/jline/builtins/Tmux;->CLOCK_COLOR:I

    invoke-direct {v7, v0, v5, v1, v2}, Lorg/jline/builtins/Tmux;->print([JLorg/jline/builtins/Tmux$VirtualConsole;Ljava/lang/String;I)V

    .line 1039
    .end local v1    # "str":Ljava/lang/String;
    goto :goto_2

    .line 1041
    .end local p0    # "this":Lorg/jline/builtins/Tmux;
    :cond_0
    invoke-virtual {v5}, Lorg/jline/builtins/Tmux$VirtualConsole;->top()I

    move-result v10

    invoke-virtual {v5}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v11

    iget-object v1, v7, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v1}, Lorg/jline/terminal/Size;->getRows()I

    move-result v12

    iget-object v1, v7, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v1}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v13

    .line 1042
    invoke-direct/range {p0 .. p0}, Lorg/jline/builtins/Tmux;->active()Lorg/jline/builtins/Tmux$VirtualConsole;

    move-result-object v1

    if-ne v5, v1, :cond_1

    move-object v14, v15

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    move-object v14, v1

    .line 1041
    :goto_1
    move-object v8, v5

    move-object v9, v0

    invoke-virtual/range {v8 .. v14}, Lorg/jline/builtins/Tmux$VirtualConsole;->dump([JIIII[I)V

    .line 1045
    :goto_2
    iget-boolean v1, v7, Lorg/jline/builtins/Tmux;->identify:Z

    if-eqz v1, :cond_3

    .line 1046
    invoke-static {v5}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$1100(Lorg/jline/builtins/Tmux$VirtualConsole;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1047
    .local v1, "id":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lorg/jline/builtins/Tmux;->active()Lorg/jline/builtins/Tmux$VirtualConsole;

    move-result-object v2

    if-ne v5, v2, :cond_2

    iget v2, v7, Lorg/jline/builtins/Tmux;->ACTIVE_COLOR:I

    goto :goto_3

    :cond_2
    iget v2, v7, Lorg/jline/builtins/Tmux;->INACTIVE_COLOR:I

    :goto_3
    invoke-direct {v7, v0, v5, v1, v2}, Lorg/jline/builtins/Tmux;->print([JLorg/jline/builtins/Tmux$VirtualConsole;Ljava/lang/String;I)V

    .line 1050
    .end local v1    # "id":Ljava/lang/String;
    :cond_3
    iget-object v3, v7, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    const-wide/16 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v4, v5

    move-object v10, v5

    .end local v5    # "terminal":Lorg/jline/builtins/Tmux$VirtualConsole;
    .local v10, "terminal":Lorg/jline/builtins/Tmux$VirtualConsole;
    move-wide v5, v8

    invoke-direct/range {v1 .. v6}, Lorg/jline/builtins/Tmux;->drawBorder([JLorg/jline/terminal/Size;Lorg/jline/builtins/Tmux$VirtualConsole;J)V

    .line 1051
    .end local v10    # "terminal":Lorg/jline/builtins/Tmux$VirtualConsole;
    goto :goto_0

    .line 1052
    :cond_4
    iget-object v3, v7, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    invoke-direct/range {p0 .. p0}, Lorg/jline/builtins/Tmux;->active()Lorg/jline/builtins/Tmux$VirtualConsole;

    move-result-object v4

    const-wide/high16 v5, 0x1008000000000000L    # 1.93234463087914E-231

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lorg/jline/builtins/Tmux;->drawBorder([JLorg/jline/terminal/Size;Lorg/jline/builtins/Tmux$VirtualConsole;J)V

    .line 1054
    iget-object v1, v7, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v1}, Lorg/jline/terminal/Size;->getRows()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v3, v7, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v3}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v3

    mul-int/2addr v1, v3

    iget-object v3, v7, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v3}, Lorg/jline/terminal/Size;->getRows()I

    move-result v3

    iget-object v4, v7, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v4}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v4

    mul-int/2addr v3, v4

    const-wide v4, 0x2000008000000020L

    invoke-static {v0, v1, v3, v4, v5}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 1067
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    .local v1, "lines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    const/4 v3, 0x0

    .line 1069
    .local v3, "prevBg":I
    const/4 v4, 0x0

    .line 1070
    .local v4, "prevFg":I
    const/4 v5, 0x0

    .line 1071
    .local v5, "prevInv":Z
    const/4 v6, 0x0

    .line 1072
    .local v6, "prevUl":Z
    const/4 v8, 0x0

    .line 1073
    .local v8, "prevBold":Z
    const/4 v9, 0x0

    .line 1074
    .local v9, "prevConceal":Z
    const/4 v10, 0x0

    .line 1075
    .local v10, "prevHasFg":Z
    const/4 v11, 0x0

    .line 1076
    .local v11, "prevHasBg":Z
    const/4 v12, 0x0

    .local v12, "y":I
    :goto_4
    iget-object v13, v7, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v13}, Lorg/jline/terminal/Size;->getRows()I

    move-result v13

    if-ge v12, v13, :cond_1c

    .line 1077
    new-instance v13, Lorg/jline/utils/AttributedStringBuilder;

    iget-object v14, v7, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v14}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v14

    invoke-direct {v13, v14}, Lorg/jline/utils/AttributedStringBuilder;-><init>(I)V

    .line 1078
    .local v13, "sb":Lorg/jline/utils/AttributedStringBuilder;
    const/4 v14, 0x0

    .local v14, "x":I
    :goto_5
    iget-object v2, v7, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v2}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v2

    if-ge v14, v2, :cond_1b

    .line 1079
    iget-object v2, v7, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v2}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v2

    mul-int/2addr v2, v12

    add-int/2addr v2, v14

    aget-wide v17, v0, v2

    .line 1080
    .local v17, "d":J
    const-wide v19, 0xffffffffL

    move-object v2, v0

    move-object/from16 v21, v1

    .end local v0    # "screen":[J
    .end local v1    # "lines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .local v2, "screen":[J
    .local v21, "lines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    and-long v0, v17, v19

    long-to-int v0, v0

    .line 1081
    .local v0, "c":I
    const/16 v1, 0x20

    move-object/from16 v19, v2

    .end local v2    # "screen":[J
    .local v19, "screen":[J
    shr-long v1, v17, v1

    long-to-int v1, v1

    .line 1082
    .local v1, "a":I
    and-int/lit16 v2, v1, 0xfff

    .line 1083
    .local v2, "bg":I
    const v20, 0xfff000

    and-int v20, v1, v20

    move-object/from16 v22, v15

    .end local v15    # "cursor":[I
    .local v22, "cursor":[I
    shr-int/lit8 v15, v20, 0xc

    .line 1084
    .local v15, "fg":I
    const/high16 v20, 0x1000000

    and-int v20, v1, v20

    if-eqz v20, :cond_5

    const/16 v20, 0x1

    goto :goto_6

    :cond_5
    const/16 v20, 0x0

    :goto_6
    move/from16 v23, v20

    .line 1085
    .local v23, "ul":Z
    const/high16 v20, 0x2000000

    and-int v20, v1, v20

    if-eqz v20, :cond_6

    const/16 v20, 0x1

    goto :goto_7

    :cond_6
    const/16 v20, 0x0

    :goto_7
    move/from16 v24, v20

    .line 1086
    .local v24, "inv":Z
    const/high16 v20, 0x4000000

    and-int v20, v1, v20

    if-eqz v20, :cond_7

    const/16 v20, 0x1

    goto :goto_8

    :cond_7
    const/16 v20, 0x0

    :goto_8
    move/from16 v25, v20

    .line 1087
    .local v25, "conceal":Z
    const/high16 v20, 0x8000000

    and-int v20, v1, v20

    if-eqz v20, :cond_8

    const/16 v20, 0x1

    goto :goto_9

    :cond_8
    const/16 v20, 0x0

    :goto_9
    move/from16 v26, v20

    .line 1088
    .local v26, "bold":Z
    const/high16 v20, 0x10000000

    and-int v20, v1, v20

    if-eqz v20, :cond_9

    const/16 v20, 0x1

    goto :goto_a

    :cond_9
    const/16 v20, 0x0

    :goto_a
    move/from16 v27, v20

    .line 1089
    .local v27, "hasFg":Z
    const/high16 v20, 0x20000000

    and-int v20, v1, v20

    if-eqz v20, :cond_a

    const/16 v20, 0x1

    goto :goto_b

    :cond_a
    const/16 v20, 0x0

    :goto_b
    move/from16 v28, v20

    .line 1091
    .local v28, "hasBg":Z
    move/from16 v20, v1

    .end local v1    # "a":I
    .local v20, "a":I
    move/from16 v1, v28

    .end local v28    # "hasBg":Z
    .local v1, "hasBg":Z
    if-eqz v1, :cond_b

    if-eqz v11, :cond_b

    if-ne v2, v3, :cond_c

    :cond_b
    if-eq v11, v1, :cond_e

    .line 1092
    :cond_c
    if-nez v1, :cond_d

    .line 1093
    invoke-virtual {v13}, Lorg/jline/utils/AttributedStringBuilder;->style()Lorg/jline/utils/AttributedStyle;

    move-result-object v28

    move/from16 v29, v3

    .end local v3    # "prevBg":I
    .local v29, "prevBg":I
    invoke-virtual/range {v28 .. v28}, Lorg/jline/utils/AttributedStyle;->backgroundDefault()Lorg/jline/utils/AttributedStyle;

    move-result-object v3

    invoke-virtual {v13, v3}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    move/from16 v28, v11

    move/from16 v30, v12

    move/from16 v31, v14

    goto :goto_c

    .line 1095
    .end local v29    # "prevBg":I
    .restart local v3    # "prevBg":I
    :cond_d
    move/from16 v29, v3

    .end local v3    # "prevBg":I
    .restart local v29    # "prevBg":I
    move v3, v2

    .line 1096
    .local v3, "col":I
    move/from16 v28, v11

    .end local v11    # "prevHasBg":Z
    .local v28, "prevHasBg":Z
    and-int/lit16 v11, v3, 0xf00

    shr-int/lit8 v11, v11, 0x4

    move/from16 v30, v12

    .end local v12    # "y":I
    .local v30, "y":I
    and-int/lit16 v12, v3, 0xf0

    and-int/lit8 v31, v3, 0xf

    move/from16 v32, v3

    .end local v3    # "col":I
    .local v32, "col":I
    shl-int/lit8 v3, v31, 0x4

    move/from16 v31, v14

    const/16 v14, 0x100

    .end local v14    # "x":I
    .local v31, "x":I
    invoke-static {v11, v12, v3, v14}, Lorg/jline/utils/Colors;->roundRgbColor(IIII)I

    move-result v3

    .line 1097
    .end local v32    # "col":I
    .restart local v3    # "col":I
    invoke-virtual {v13}, Lorg/jline/utils/AttributedStringBuilder;->style()Lorg/jline/utils/AttributedStyle;

    move-result-object v11

    invoke-virtual {v11, v3}, Lorg/jline/utils/AttributedStyle;->background(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v11

    invoke-virtual {v13, v11}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1099
    .end local v3    # "col":I
    :goto_c
    move v3, v2

    .line 1100
    .end local v29    # "prevBg":I
    .local v3, "prevBg":I
    move v11, v1

    .end local v28    # "prevHasBg":Z
    .restart local v11    # "prevHasBg":Z
    goto :goto_d

    .line 1091
    .end local v30    # "y":I
    .end local v31    # "x":I
    .restart local v12    # "y":I
    .restart local v14    # "x":I
    :cond_e
    move/from16 v29, v3

    move/from16 v28, v11

    move/from16 v30, v12

    move/from16 v31, v14

    .line 1102
    .end local v12    # "y":I
    .end local v14    # "x":I
    .restart local v30    # "y":I
    .restart local v31    # "x":I
    :goto_d
    move/from16 v12, v27

    .end local v27    # "hasFg":Z
    .local v12, "hasFg":Z
    if-eqz v12, :cond_f

    if-eqz v10, :cond_f

    if-ne v15, v4, :cond_10

    :cond_f
    if-eq v10, v12, :cond_12

    .line 1103
    :cond_10
    if-nez v12, :cond_11

    .line 1104
    invoke-virtual {v13}, Lorg/jline/utils/AttributedStringBuilder;->style()Lorg/jline/utils/AttributedStyle;

    move-result-object v14

    invoke-virtual {v14}, Lorg/jline/utils/AttributedStyle;->foregroundDefault()Lorg/jline/utils/AttributedStyle;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    move/from16 v27, v1

    move/from16 v32, v2

    move/from16 v29, v3

    move/from16 v33, v4

    goto :goto_e

    .line 1106
    :cond_11
    move v14, v15

    .line 1107
    .local v14, "col":I
    move/from16 v27, v1

    .end local v1    # "hasBg":Z
    .local v27, "hasBg":Z
    and-int/lit16 v1, v14, 0xf00

    shr-int/lit8 v1, v1, 0x4

    move/from16 v32, v2

    .end local v2    # "bg":I
    .local v32, "bg":I
    and-int/lit16 v2, v14, 0xf0

    and-int/lit8 v28, v14, 0xf

    move/from16 v29, v3

    .end local v3    # "prevBg":I
    .restart local v29    # "prevBg":I
    shl-int/lit8 v3, v28, 0x4

    move/from16 v33, v4

    const/16 v4, 0x100

    .end local v4    # "prevFg":I
    .local v33, "prevFg":I
    invoke-static {v1, v2, v3, v4}, Lorg/jline/utils/Colors;->roundRgbColor(IIII)I

    move-result v1

    .line 1108
    .end local v14    # "col":I
    .local v1, "col":I
    invoke-virtual {v13}, Lorg/jline/utils/AttributedStringBuilder;->style()Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jline/utils/AttributedStyle;->foreground(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1110
    .end local v1    # "col":I
    :goto_e
    move v4, v15

    .line 1111
    .end local v33    # "prevFg":I
    .restart local v4    # "prevFg":I
    move v10, v12

    goto :goto_f

    .line 1102
    .end local v27    # "hasBg":Z
    .end local v29    # "prevBg":I
    .end local v32    # "bg":I
    .local v1, "hasBg":Z
    .restart local v2    # "bg":I
    .restart local v3    # "prevBg":I
    :cond_12
    move/from16 v27, v1

    move/from16 v32, v2

    move/from16 v29, v3

    move/from16 v33, v4

    .line 1113
    .end local v1    # "hasBg":Z
    .end local v2    # "bg":I
    .end local v3    # "prevBg":I
    .restart local v27    # "hasBg":Z
    .restart local v29    # "prevBg":I
    .restart local v32    # "bg":I
    :goto_f
    move/from16 v1, v25

    .end local v25    # "conceal":Z
    .local v1, "conceal":Z
    if-eq v1, v9, :cond_14

    .line 1114
    if-eqz v1, :cond_13

    invoke-virtual {v13}, Lorg/jline/utils/AttributedStringBuilder;->style()Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jline/utils/AttributedStyle;->conceal()Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    goto :goto_10

    :cond_13
    invoke-virtual {v13}, Lorg/jline/utils/AttributedStringBuilder;->style()Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jline/utils/AttributedStyle;->concealOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    :goto_10
    invoke-virtual {v13, v2}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1115
    move v9, v1

    .line 1117
    :cond_14
    move/from16 v2, v24

    .end local v24    # "inv":Z
    .local v2, "inv":Z
    if-eq v2, v5, :cond_16

    .line 1118
    if-eqz v2, :cond_15

    invoke-virtual {v13}, Lorg/jline/utils/AttributedStringBuilder;->style()Lorg/jline/utils/AttributedStyle;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jline/utils/AttributedStyle;->inverse()Lorg/jline/utils/AttributedStyle;

    move-result-object v3

    goto :goto_11

    :cond_15
    invoke-virtual {v13}, Lorg/jline/utils/AttributedStringBuilder;->style()Lorg/jline/utils/AttributedStyle;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jline/utils/AttributedStyle;->inverseOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v3

    :goto_11
    invoke-virtual {v13, v3}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1119
    move v5, v2

    .line 1121
    :cond_16
    move/from16 v3, v23

    .end local v23    # "ul":Z
    .local v3, "ul":Z
    if-eq v3, v6, :cond_18

    .line 1122
    if-eqz v3, :cond_17

    invoke-virtual {v13}, Lorg/jline/utils/AttributedStringBuilder;->style()Lorg/jline/utils/AttributedStyle;

    move-result-object v14

    invoke-virtual {v14}, Lorg/jline/utils/AttributedStyle;->underline()Lorg/jline/utils/AttributedStyle;

    move-result-object v14

    goto :goto_12

    :cond_17
    invoke-virtual {v13}, Lorg/jline/utils/AttributedStringBuilder;->style()Lorg/jline/utils/AttributedStyle;

    move-result-object v14

    invoke-virtual {v14}, Lorg/jline/utils/AttributedStyle;->underlineOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v14

    :goto_12
    invoke-virtual {v13, v14}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1123
    move v6, v3

    .line 1125
    :cond_18
    move/from16 v14, v26

    .end local v26    # "bold":Z
    .local v14, "bold":Z
    if-eq v14, v8, :cond_1a

    .line 1126
    if-eqz v14, :cond_19

    invoke-virtual {v13}, Lorg/jline/utils/AttributedStringBuilder;->style()Lorg/jline/utils/AttributedStyle;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/jline/utils/AttributedStyle;->bold()Lorg/jline/utils/AttributedStyle;

    move-result-object v23

    goto :goto_13

    :cond_19
    invoke-virtual {v13}, Lorg/jline/utils/AttributedStringBuilder;->style()Lorg/jline/utils/AttributedStyle;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/jline/utils/AttributedStyle;->boldOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v23

    :goto_13
    move/from16 v24, v1

    move-object/from16 v1, v23

    .end local v1    # "conceal":Z
    .local v24, "conceal":Z
    invoke-virtual {v13, v1}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1127
    move v8, v14

    goto :goto_14

    .line 1125
    .end local v24    # "conceal":Z
    .restart local v1    # "conceal":Z
    :cond_1a
    move/from16 v24, v1

    .line 1129
    .end local v1    # "conceal":Z
    .restart local v24    # "conceal":Z
    :goto_14
    int-to-char v1, v0

    invoke-virtual {v13, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 1078
    nop

    .end local v0    # "c":I
    .end local v2    # "inv":Z
    .end local v3    # "ul":Z
    .end local v12    # "hasFg":Z
    .end local v14    # "bold":Z
    .end local v15    # "fg":I
    .end local v17    # "d":J
    .end local v20    # "a":I
    .end local v24    # "conceal":Z
    .end local v27    # "hasBg":Z
    .end local v32    # "bg":I
    add-int/lit8 v14, v31, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v15, v22

    move/from16 v3, v29

    move/from16 v12, v30

    const/4 v2, 0x1

    .end local v31    # "x":I
    .local v14, "x":I
    goto/16 :goto_5

    .end local v19    # "screen":[J
    .end local v21    # "lines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .end local v22    # "cursor":[I
    .end local v29    # "prevBg":I
    .end local v30    # "y":I
    .local v0, "screen":[J
    .local v1, "lines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .local v3, "prevBg":I
    .local v12, "y":I
    .local v15, "cursor":[I
    :cond_1b
    move-object/from16 v19, v0

    move-object/from16 v21, v1

    move/from16 v29, v3

    move/from16 v33, v4

    move/from16 v28, v11

    move/from16 v30, v12

    move/from16 v31, v14

    move-object/from16 v22, v15

    .line 1131
    .end local v0    # "screen":[J
    .end local v1    # "lines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .end local v3    # "prevBg":I
    .end local v4    # "prevFg":I
    .end local v11    # "prevHasBg":Z
    .end local v12    # "y":I
    .end local v14    # "x":I
    .end local v15    # "cursor":[I
    .restart local v19    # "screen":[J
    .restart local v21    # "lines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .restart local v22    # "cursor":[I
    .restart local v28    # "prevHasBg":Z
    .restart local v29    # "prevBg":I
    .restart local v30    # "y":I
    .restart local v33    # "prevFg":I
    invoke-virtual {v13}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v0

    move-object/from16 v1, v21

    .end local v21    # "lines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .restart local v1    # "lines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1076
    nop

    .end local v13    # "sb":Lorg/jline/utils/AttributedStringBuilder;
    add-int/lit8 v12, v30, 0x1

    move-object/from16 v0, v19

    move-object/from16 v15, v22

    move/from16 v11, v28

    move/from16 v3, v29

    move/from16 v4, v33

    const/4 v2, 0x1

    .end local v30    # "y":I
    .restart local v12    # "y":I
    goto/16 :goto_4

    .end local v19    # "screen":[J
    .end local v22    # "cursor":[I
    .end local v28    # "prevHasBg":Z
    .end local v29    # "prevBg":I
    .end local v33    # "prevFg":I
    .restart local v0    # "screen":[J
    .restart local v3    # "prevBg":I
    .restart local v4    # "prevFg":I
    .restart local v11    # "prevHasBg":Z
    .restart local v15    # "cursor":[I
    :cond_1c
    move-object/from16 v19, v0

    move/from16 v30, v12

    move-object/from16 v22, v15

    .line 1133
    .end local v0    # "screen":[J
    .end local v12    # "y":I
    .end local v15    # "cursor":[I
    .restart local v19    # "screen":[J
    .restart local v22    # "cursor":[I
    iget-object v0, v7, Lorg/jline/builtins/Tmux;->display:Lorg/jline/utils/Display;

    iget-object v2, v7, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v2}, Lorg/jline/terminal/Size;->getRows()I

    move-result v2

    iget-object v12, v7, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v12}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v12

    invoke-virtual {v0, v2, v12}, Lorg/jline/utils/Display;->resize(II)V

    .line 1134
    iget-object v0, v7, Lorg/jline/builtins/Tmux;->display:Lorg/jline/utils/Display;

    iget-object v2, v7, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    const/4 v12, 0x1

    aget v12, v22, v12

    const/4 v13, 0x0

    aget v13, v22, v13

    invoke-virtual {v2, v12, v13}, Lorg/jline/terminal/Size;->cursorPos(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/utils/Display;->update(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    monitor-exit p0

    return-void

    .line 1030
    .end local v1    # "lines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .end local v3    # "prevBg":I
    .end local v4    # "prevFg":I
    .end local v5    # "prevInv":Z
    .end local v6    # "prevUl":Z
    .end local v8    # "prevBold":Z
    .end local v9    # "prevConceal":Z
    .end local v10    # "prevHasFg":Z
    .end local v11    # "prevHasBg":Z
    .end local v19    # "screen":[J
    .end local v22    # "cursor":[I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected resizePane(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V
    .locals 9
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/io/PrintStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 941
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "resize-pane - "

    const-string v1, "Usage: resize-pane [-UDLR] [-x width] [-y height] [-t target-pane] [adjustment]"

    const-string v2, "  -? --help                    Show help"

    const-string v3, "  -U                           Resize pane upward"

    const-string v4, "  -D                           Select pane downward"

    const-string v5, "  -L                           Select pane to the left"

    const-string v6, "  -R                           Select pane to the right"

    const-string v7, "  -x --width=width             Set the width of the pane"

    const-string v8, "  -y --height=height           Set the height of the pane"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/jline/builtins/Options;->parse(Ljava/util/List;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 953
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v2, "help"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 957
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 958
    const/4 v2, 0x1

    .local v2, "adjust":I
    goto :goto_0

    .line 959
    .end local v2    # "adjust":I
    :cond_0
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 960
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 964
    .restart local v2    # "adjust":I
    :goto_0
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->window()Lorg/jline/builtins/Tmux$Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/jline/builtins/Tmux$Window;->resizePane(Lorg/jline/builtins/Options;I)V

    .line 965
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->setDirty()V

    .line 966
    return-void

    .line 962
    .end local v2    # "adjust":I
    :cond_1
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 954
    :cond_2
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public run()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v1, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    new-instance v2, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda7;-><init>(Lorg/jline/builtins/Tmux;)V

    invoke-interface {v0, v1, v2}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    move-result-object v0

    .line 429
    .local v0, "prevWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    iget-object v1, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v2, Lorg/jline/terminal/Terminal$Signal;->INT:Lorg/jline/terminal/Terminal$Signal;

    new-instance v3, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda8;-><init>(Lorg/jline/builtins/Tmux;)V

    invoke-interface {v1, v2, v3}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    move-result-object v1

    .line 430
    .local v1, "prevIntHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    iget-object v2, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/terminal/Terminal$Signal;->TSTP:Lorg/jline/terminal/Terminal$Signal;

    new-instance v4, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda9;-><init>(Lorg/jline/builtins/Tmux;)V

    invoke-interface {v2, v3, v4}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    move-result-object v2

    .line 431
    .local v2, "prevSuspHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    iget-object v3, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v3}, Lorg/jline/terminal/Terminal;->enterRawMode()Lorg/jline/terminal/Attributes;

    move-result-object v3

    .line 432
    .local v3, "attributes":Lorg/jline/terminal/Attributes;
    iget-object v4, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/utils/InfoCmp$Capability;->enter_ca_mode:Lorg/jline/utils/InfoCmp$Capability;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v7}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 433
    iget-object v4, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/utils/InfoCmp$Capability;->keypad_xmit:Lorg/jline/utils/InfoCmp$Capability;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v7}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 434
    iget-object v4, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/terminal/Terminal$MouseTracking;->Any:Lorg/jline/terminal/Terminal$MouseTracking;

    invoke-interface {v4, v5}, Lorg/jline/terminal/Terminal;->trackMouse(Lorg/jline/terminal/Terminal$MouseTracking;)Z

    .line 435
    iget-object v4, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v4}, Lorg/jline/terminal/Terminal;->flush()V

    .line 436
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    iput-object v4, p0, Lorg/jline/builtins/Tmux;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 439
    :try_start_0
    iget-object v4, p0, Lorg/jline/builtins/Tmux;->size:Lorg/jline/terminal/Size;

    iget-object v5, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v5}, Lorg/jline/terminal/Terminal;->getSize()Lorg/jline/terminal/Size;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 440
    iget-object v4, p0, Lorg/jline/builtins/Tmux;->windows:Ljava/util/List;

    new-instance v5, Lorg/jline/builtins/Tmux$Window;

    invoke-direct {v5, p0, p0}, Lorg/jline/builtins/Tmux$Window;-><init>(Lorg/jline/builtins/Tmux;Lorg/jline/builtins/Tmux;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    iput v6, p0, Lorg/jline/builtins/Tmux;->activeWindow:I

    .line 442
    iget-object v4, p0, Lorg/jline/builtins/Tmux;->runner:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->active()Lorg/jline/builtins/Tmux$VirtualConsole;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jline/builtins/Tmux$VirtualConsole;->getConsole()Lorg/jline/terminal/impl/LineDisciplineTerminal;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 444
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda1;-><init>(Lorg/jline/builtins/Tmux;)V

    const-string v7, "Mux input loop"

    invoke-direct {v4, v5, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 446
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->redrawLoop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    iget-object v4, p0, Lorg/jline/builtins/Tmux;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 451
    iget-object v4, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/terminal/Terminal$MouseTracking;->Off:Lorg/jline/terminal/Terminal$MouseTracking;

    invoke-interface {v4, v5}, Lorg/jline/terminal/Terminal;->trackMouse(Lorg/jline/terminal/Terminal$MouseTracking;)Z

    .line 452
    iget-object v4, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/utils/InfoCmp$Capability;->keypad_local:Lorg/jline/utils/InfoCmp$Capability;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v7}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 453
    iget-object v4, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/utils/InfoCmp$Capability;->exit_ca_mode:Lorg/jline/utils/InfoCmp$Capability;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 454
    iget-object v4, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v4}, Lorg/jline/terminal/Terminal;->flush()V

    .line 455
    iget-object v4, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v4, v3}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 456
    iget-object v4, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v4, v5, v0}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 457
    iget-object v4, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/terminal/Terminal$Signal;->INT:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v4, v5, v1}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 458
    iget-object v4, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/terminal/Terminal$Signal;->TSTP:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v4, v5, v2}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 459
    nop

    .line 460
    return-void

    .line 450
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 447
    :catch_0
    move-exception v4

    .line 448
    .local v4, "e":Ljava/lang/RuntimeException;
    nop

    .end local v0    # "prevWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v1    # "prevIntHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v2    # "prevSuspHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v3    # "attributes":Lorg/jline/terminal/Attributes;
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "prevWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v1    # "prevIntHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v2    # "prevSuspHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v3    # "attributes":Lorg/jline/terminal/Attributes;
    :goto_0
    iget-object v5, p0, Lorg/jline/builtins/Tmux;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v5}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 451
    iget-object v5, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/terminal/Terminal$MouseTracking;->Off:Lorg/jline/terminal/Terminal$MouseTracking;

    invoke-interface {v5, v7}, Lorg/jline/terminal/Terminal;->trackMouse(Lorg/jline/terminal/Terminal$MouseTracking;)Z

    .line 452
    iget-object v5, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->keypad_local:Lorg/jline/utils/InfoCmp$Capability;

    new-array v8, v6, [Ljava/lang/Object;

    invoke-interface {v5, v7, v8}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 453
    iget-object v5, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->exit_ca_mode:Lorg/jline/utils/InfoCmp$Capability;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v5, v7, v6}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 454
    iget-object v5, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v5}, Lorg/jline/terminal/Terminal;->flush()V

    .line 455
    iget-object v5, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v5, v3}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 456
    iget-object v5, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v6, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v5, v6, v0}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 457
    iget-object v5, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v6, Lorg/jline/terminal/Terminal$Signal;->INT:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v5, v6, v1}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 458
    iget-object v5, p0, Lorg/jline/builtins/Tmux;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v6, Lorg/jline/terminal/Terminal$Signal;->TSTP:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v5, v6, v2}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 459
    throw v4
.end method

.method protected selectPane(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V
    .locals 7
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/io/PrintStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 969
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "select-pane - "

    const-string v1, "Usage: select-pane [-UDLR] [-t target-pane]"

    const-string v2, "  -? --help                    Show help"

    const-string v3, "  -U                           Select pane up"

    const-string v4, "  -D                           Select pane down"

    const-string v5, "  -L                           Select pane left"

    const-string v6, "  -R                           Select pane right"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/jline/builtins/Options;->parse(Ljava/util/List;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 979
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v2, "help"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 982
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->window()Lorg/jline/builtins/Tmux$Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jline/builtins/Tmux$Window;->selectPane(Lorg/jline/builtins/Options;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 983
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->setDirty()V

    .line 985
    :cond_0
    return-void

    .line 980
    :cond_1
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected sendKeys(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V
    .locals 9
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/io/PrintStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 883
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "send-keys - "

    const-string v1, "Usage: send-keys [-lXRM] [-N repeat-count] [-t target-pane] key..."

    const-string v2, "  -? --help                    Show help"

    const-string v3, "  -l --literal                Send key literally"

    const-string v4, "  -N --number=repeat-count     Specifies a repeat count"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 890
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/jline/builtins/Options;->parse(Ljava/util/List;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 891
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v2, "help"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 894
    const/4 v2, 0x0

    .local v2, "i":I
    const-string v3, "number"

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Options;->getNumber(Ljava/lang/String;)I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 895
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 896
    .local v5, "arg":Ljava/lang/String;
    const-string v6, "literal"

    invoke-virtual {v1, v6}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v5

    goto :goto_2

    :cond_0
    invoke-static {v5}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 897
    .local v6, "s":Ljava/lang/String;
    :goto_2
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->active()Lorg/jline/builtins/Tmux$VirtualConsole;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jline/builtins/Tmux$VirtualConsole;->getMasterInputOutput()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 898
    .end local v5    # "arg":Ljava/lang/String;
    .end local v6    # "s":Ljava/lang/String;
    goto :goto_1

    .line 894
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 900
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_2
    return-void

    .line 892
    :cond_3
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected sendPrefix(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V
    .locals 5
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/io/PrintStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 988
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "send-prefix - "

    const-string v1, "Usage: send-prefix [-2] [-t target-pane]"

    const-string v2, "  -? --help                    Show help"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/jline/builtins/Options;->parse(Ljava/util/List;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 994
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v2, "help"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 997
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->active()Lorg/jline/builtins/Tmux$VirtualConsole;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jline/builtins/Tmux$VirtualConsole;->getMasterInputOutput()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/jline/builtins/Tmux;->serverOptions:Ljava/util/Map;

    const-string v4, "prefix"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 998
    return-void

    .line 995
    :cond_0
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected setOption(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V
    .locals 16
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/io/PrintStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 762
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    const-string v1, "set-option - "

    const-string v2, "Usage: set-option [-agosquw] option [value]"

    const-string v3, "  -? --help                    Show help"

    const-string v4, "  -u --unset                   Unset the option"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 768
    .local v1, "usage":[Ljava/lang/String;
    invoke-static {v1}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v2

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Lorg/jline/builtins/Options;->parse(Ljava/util/List;)Lorg/jline/builtins/Options;

    move-result-object v2

    .line 769
    .local v2, "opt":Lorg/jline/builtins/Options;
    const-string v4, "help"

    invoke-virtual {v2, v4}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 772
    invoke-virtual {v2}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 773
    .local v4, "nbargs":I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_8

    const/4 v6, 0x2

    if-gt v4, v6, :cond_8

    .line 776
    invoke-virtual {v2}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 777
    .local v6, "name":Ljava/lang/String;
    if-le v4, v5, :cond_0

    invoke-virtual {v2}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 778
    .local v5, "value":Ljava/lang/String;
    :goto_0
    const-string v8, "@"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_5

    .line 782
    :cond_1
    const/4 v8, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    const-string v10, "prefix"

    packed-switch v9, :pswitch_data_0

    :cond_2
    goto :goto_1

    :pswitch_0
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :goto_1
    move v7, v8

    :goto_2
    packed-switch v7, :pswitch_data_1

    goto/16 :goto_5

    .line 784
    :pswitch_1
    if-eqz v5, :cond_7

    .line 787
    invoke-static {v5}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 788
    .local v7, "prefix":Ljava/lang/String;
    iget-object v8, v0, Lorg/jline/builtins/Tmux;->serverOptions:Ljava/util/Map;

    invoke-interface {v8, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 789
    .local v8, "oldPrefix":Ljava/lang/String;
    invoke-virtual {v0, v7}, Lorg/jline/builtins/Tmux;->createEmptyKeyMap(Ljava/lang/String;)Lorg/jline/keymap/KeyMap;

    move-result-object v9

    .line 790
    .local v9, "newKeys":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Ljava/lang/Object;>;"
    iget-object v10, v0, Lorg/jline/builtins/Tmux;->keyMap:Lorg/jline/keymap/KeyMap;

    invoke-virtual {v10}, Lorg/jline/keymap/KeyMap;->getBoundKeys()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 791
    .local v11, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 792
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 793
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 794
    :cond_3
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 795
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 797
    :cond_4
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v9, v12, v13}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 800
    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    :goto_4
    goto/16 :goto_3

    .line 801
    :cond_6
    iput-object v9, v0, Lorg/jline/builtins/Tmux;->keyMap:Lorg/jline/keymap/KeyMap;

    goto :goto_5

    .line 785
    .end local v7    # "prefix":Ljava/lang/String;
    .end local v8    # "oldPrefix":Ljava/lang/String;
    .end local v9    # "newKeys":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Ljava/lang/Object;>;"
    :cond_7
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Missing argument"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 805
    :goto_5
    return-void

    .line 774
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    :cond_8
    new-instance v5, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v2}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 770
    .end local v4    # "nbargs":I
    :cond_9
    new-instance v4, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v2}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch -0x3a6b4d6e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method protected splitWindow(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V
    .locals 10
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/io/PrintStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1001
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "split-window - "

    const-string v1, "Usage: split-window [-bdfhvP] [-c start-directory] [-F format] [-p percentage|-l size] [-t target-pane] [command]"

    const-string v2, "  -? --help                    Show help"

    const-string v3, "  -h --horizontal              Horizontal split"

    const-string v4, "  -v --vertical                Vertical split"

    const-string v5, "  -l --size=size               Size"

    const-string v6, "  -p --perc=percentage         Percentage"

    const-string v7, "  -b --before                  Insert the new pane before the active one"

    const-string v8, "  -f                           Split the full window instead of the active pane"

    const-string v9, "  -d                           Do not make the new pane the active one"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 1013
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/jline/builtins/Options;->parse(Ljava/util/List;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 1014
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v2, "help"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1017
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->window()Lorg/jline/builtins/Tmux$Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jline/builtins/Tmux$Window;->splitPane(Lorg/jline/builtins/Options;)Lorg/jline/builtins/Tmux$VirtualConsole;

    move-result-object v2

    .line 1018
    .local v2, "newConsole":Lorg/jline/builtins/Tmux$VirtualConsole;
    iget-object v3, p0, Lorg/jline/builtins/Tmux;->runner:Ljava/util/function/Consumer;

    invoke-virtual {v2}, Lorg/jline/builtins/Tmux$VirtualConsole;->getConsole()Lorg/jline/terminal/impl/LineDisciplineTerminal;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1019
    invoke-direct {p0}, Lorg/jline/builtins/Tmux;->setDirty()V

    .line 1020
    return-void

    .line 1015
    .end local v2    # "newConsole":Lorg/jline/builtins/Tmux$VirtualConsole;
    :cond_0
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected unbindKey(Ljava/io/PrintStream;Ljava/io/PrintStream;Ljava/util/List;)V
    .locals 7
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "err"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/io/PrintStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 828
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "unbind-key - "

    const-string v1, "Usage: unbind-key key"

    const-string v2, "  -? --help                    Show help"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 833
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->setOptionsFirst(Z)Lorg/jline/builtins/Options;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/jline/builtins/Options;->parse(Ljava/util/List;)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 834
    .local v1, "opt":Lorg/jline/builtins/Options;
    const-string v3, "help"

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 837
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v3

    .line 838
    .local v3, "vargs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 841
    iget-object v2, p0, Lorg/jline/builtins/Tmux;->serverOptions:Ljava/util/Map;

    const-string v4, "prefix"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 842
    .local v2, "prefix":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 843
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lorg/jline/builtins/Tmux;->keyMap:Lorg/jline/keymap/KeyMap;

    invoke-virtual {v5, v4}, Lorg/jline/keymap/KeyMap;->unbind(Ljava/lang/CharSequence;)V

    .line 844
    iget-object v5, p0, Lorg/jline/builtins/Tmux;->keyMap:Lorg/jline/keymap/KeyMap;

    sget-object v6, Lorg/jline/builtins/Tmux$Binding;->Discard:Lorg/jline/builtins/Tmux$Binding;

    invoke-virtual {v5, v6, v4}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 845
    return-void

    .line 839
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 835
    .end local v3    # "vargs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v2, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
