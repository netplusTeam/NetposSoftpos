.class public final synthetic Lcom/woleapp/netpos/contactless/util/RxJavaUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/SingleTransformer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/util/RxJavaUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/Single;)Lio/reactivex/SingleSource;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/util/RxJavaUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/woleapp/netpos/contactless/util/RxJavaUtils;->$r8$lambda$R-bD3hTpkjjT21WOletMa9S-tkU(Ljava/lang/String;Lio/reactivex/Single;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
