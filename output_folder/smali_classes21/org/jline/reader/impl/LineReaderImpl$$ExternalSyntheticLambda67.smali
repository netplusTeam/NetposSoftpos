.class public final synthetic Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda67;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/jline/reader/impl/LineReaderImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/reader/impl/LineReaderImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda67;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda67;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    invoke-virtual {v0}, Lorg/jline/reader/impl/LineReaderImpl;->lambda$whatCursorPosition$14$org-jline-reader-impl-LineReaderImpl()Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method
