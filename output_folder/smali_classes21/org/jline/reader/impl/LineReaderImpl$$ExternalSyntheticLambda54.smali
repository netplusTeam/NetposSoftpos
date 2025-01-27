.class public final synthetic Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda54;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/jline/reader/impl/LineReaderImpl;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/jline/reader/impl/LineReaderImpl;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda54;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    iput-object p2, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda54;->f$1:Ljava/util/List;

    iput p3, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda54;->f$2:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda54;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda54;->f$1:Ljava/util/List;

    iget v2, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda54;->f$2:I

    invoke-virtual {v0, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->lambda$doList$18$org-jline-reader-impl-LineReaderImpl(Ljava/util/List;I)Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method
