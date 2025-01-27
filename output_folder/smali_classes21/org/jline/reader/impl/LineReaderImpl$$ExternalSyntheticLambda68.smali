.class public final synthetic Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda68;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lorg/jline/reader/Buffer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lorg/jline/reader/Buffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda68;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda68;->f$1:Lorg/jline/reader/Buffer;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda68;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda68;->f$1:Lorg/jline/reader/Buffer;

    invoke-static {v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->lambda$getViSearchString$7(Ljava/lang/String;Lorg/jline/reader/Buffer;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method
