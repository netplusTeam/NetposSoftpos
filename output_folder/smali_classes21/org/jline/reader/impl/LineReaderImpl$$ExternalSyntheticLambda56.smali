.class public final synthetic Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/jline/reader/impl/LineReaderImpl;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/reader/impl/LineReaderImpl;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda56;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    iput-object p2, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda56;->f$1:Ljava/util/List;

    iput-object p3, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda56;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda56;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda56;->f$1:Ljava/util/List;

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda56;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->lambda$doList$19$org-jline-reader-impl-LineReaderImpl(Ljava/util/List;Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method
