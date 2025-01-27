.class public interface abstract Lorg/jline/terminal/Terminal$SignalHandler;
.super Ljava/lang/Object;
.source "Terminal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/Terminal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SignalHandler"
.end annotation


# static fields
.field public static final SIG_DFL:Lorg/jline/terminal/Terminal$SignalHandler;

.field public static final SIG_IGN:Lorg/jline/terminal/Terminal$SignalHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    sget-object v0, Lorg/jline/terminal/impl/NativeSignalHandler;->SIG_DFL:Lorg/jline/terminal/impl/NativeSignalHandler;

    sput-object v0, Lorg/jline/terminal/Terminal$SignalHandler;->SIG_DFL:Lorg/jline/terminal/Terminal$SignalHandler;

    .line 57
    sget-object v0, Lorg/jline/terminal/impl/NativeSignalHandler;->SIG_IGN:Lorg/jline/terminal/impl/NativeSignalHandler;

    sput-object v0, Lorg/jline/terminal/Terminal$SignalHandler;->SIG_IGN:Lorg/jline/terminal/Terminal$SignalHandler;

    return-void
.end method


# virtual methods
.method public abstract handle(Lorg/jline/terminal/Terminal$Signal;)V
.end method
