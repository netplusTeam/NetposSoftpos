.class public final synthetic Lorg/jline/style/StyleResolver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/jline/style/StyleSource;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/style/StyleSource;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/style/StyleResolver$$ExternalSyntheticLambda0;->f$0:Lorg/jline/style/StyleSource;

    iput-object p2, p0, Lorg/jline/style/StyleResolver$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/jline/style/StyleResolver$$ExternalSyntheticLambda0;->f$0:Lorg/jline/style/StyleSource;

    iget-object v1, p0, Lorg/jline/style/StyleResolver$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/jline/style/StyleResolver;->lambda$new$0(Lorg/jline/style/StyleSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
