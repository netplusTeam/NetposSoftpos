.class public final synthetic Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda91;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/jline/reader/impl/LineReaderImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/reader/impl/LineReaderImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda91;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda91;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    check-cast p1, Lorg/jline/reader/Buffer;

    invoke-virtual {v0, p1}, Lorg/jline/reader/impl/LineReaderImpl;->setBuffer(Lorg/jline/reader/Buffer;)V

    return-void
.end method
