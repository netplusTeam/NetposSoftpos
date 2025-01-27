.class public final synthetic Lorg/jline/utils/AttributedStringBuilder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/utils/AttributedStringBuilder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/jline/utils/AttributedStringBuilder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/CharSequence;

    check-cast p1, Lorg/jline/utils/AttributedStringBuilder;

    invoke-static {v0, p1}, Lorg/jline/utils/AttributedStringBuilder;->lambda$styled$2(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStringBuilder;)V

    return-void
.end method
