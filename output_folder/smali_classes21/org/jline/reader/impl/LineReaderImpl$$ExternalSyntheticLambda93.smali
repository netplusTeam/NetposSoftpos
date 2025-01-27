.class public final synthetic Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda93;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/jline/terminal/Terminal$SignalHandler;


# instance fields
.field public final synthetic f$0:Lorg/jline/reader/impl/LineReaderImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/reader/impl/LineReaderImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda93;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    return-void
.end method


# virtual methods
.method public final handle(Lorg/jline/terminal/Terminal$Signal;)V
    .locals 1

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda93;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    invoke-virtual {v0, p1}, Lorg/jline/reader/impl/LineReaderImpl;->handleSignal(Lorg/jline/terminal/Terminal$Signal;)V

    return-void
.end method
