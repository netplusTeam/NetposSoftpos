.class public final synthetic Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda76;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/jline/reader/impl/LineReaderImpl;

.field public final synthetic f$1:Lorg/jline/keymap/KeyMap;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/reader/impl/LineReaderImpl;Lorg/jline/keymap/KeyMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda76;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    iput-object p2, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda76;->f$1:Lorg/jline/keymap/KeyMap;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda76;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda76;->f$1:Lorg/jline/keymap/KeyMap;

    invoke-virtual {v0, v1, p1}, Lorg/jline/reader/impl/LineReaderImpl;->lambda$doSearchHistory$8$org-jline-reader-impl-LineReaderImpl(Lorg/jline/keymap/KeyMap;I)V

    return-void
.end method
