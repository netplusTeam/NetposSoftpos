.class public final synthetic Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda65;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/jline/reader/impl/LineReaderImpl;

.field public final synthetic f$1:Lorg/jline/keymap/KeyMap;

.field public final synthetic f$2:Lorg/jline/reader/Widget;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/reader/impl/LineReaderImpl;Lorg/jline/keymap/KeyMap;Lorg/jline/reader/Widget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda65;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    iput-object p2, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda65;->f$1:Lorg/jline/keymap/KeyMap;

    iput-object p3, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda65;->f$2:Lorg/jline/reader/Widget;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda65;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda65;->f$1:Lorg/jline/keymap/KeyMap;

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda65;->f$2:Lorg/jline/reader/Widget;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lorg/jline/reader/impl/LineReaderImpl;->lambda$bindKeys$31$org-jline-reader-impl-LineReaderImpl(Lorg/jline/keymap/KeyMap;Lorg/jline/reader/Widget;Ljava/lang/String;)V

    return-void
.end method
