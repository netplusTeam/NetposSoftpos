.class public final Lorg/jline/terminal/impl/NativeSignalHandler;
.super Ljava/lang/Object;
.source "NativeSignalHandler.java"

# interfaces
.implements Lorg/jline/terminal/Terminal$SignalHandler;


# static fields
.field public static final SIG_DFL:Lorg/jline/terminal/impl/NativeSignalHandler;

.field public static final SIG_IGN:Lorg/jline/terminal/impl/NativeSignalHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lorg/jline/terminal/impl/NativeSignalHandler;

    invoke-direct {v0}, Lorg/jline/terminal/impl/NativeSignalHandler;-><init>()V

    sput-object v0, Lorg/jline/terminal/impl/NativeSignalHandler;->SIG_DFL:Lorg/jline/terminal/impl/NativeSignalHandler;

    .line 18
    new-instance v0, Lorg/jline/terminal/impl/NativeSignalHandler;

    invoke-direct {v0}, Lorg/jline/terminal/impl/NativeSignalHandler;-><init>()V

    sput-object v0, Lorg/jline/terminal/impl/NativeSignalHandler;->SIG_IGN:Lorg/jline/terminal/impl/NativeSignalHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public handle(Lorg/jline/terminal/Terminal$Signal;)V
    .locals 1
    .param p1, "signal"    # Lorg/jline/terminal/Terminal$Signal;

    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
