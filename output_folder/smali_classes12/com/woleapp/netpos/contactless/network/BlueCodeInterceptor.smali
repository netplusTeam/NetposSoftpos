.class public final Lcom/woleapp/netpos/contactless/network/BlueCodeInterceptor;
.super Ljava/lang/Object;
.source "StormApiClient.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/BlueCodeInterceptor;",
        "Lokhttp3/Interceptor;",
        "()V",
        "getResponse",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "code",
        "",
        "responseString",
        "",
        "getResponseCode",
        "requestUrl",
        "getResponseString",
        "intercept",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getResponse(Lokhttp3/Interceptor$Chain;ILjava/lang/String;)Lokhttp3/Response;
    .locals 6
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .param p2, "code"    # I
    .param p3, "responseString"    # Ljava/lang/String;

    .line 189
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0, p2}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 192
    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {v0, p3}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 195
    sget-object v1, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    .line 196
    sget-object v2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v3, "application/json"

    invoke-virtual {v2, v3}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    .line 197
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v5, "this as java.lang.String).getBytes(charset)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1, v2, v4}, Lokhttp3/ResponseBody$Companion;->create(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 200
    const-string v1, "content-type"

    invoke-virtual {v0, v1, v3}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method private final getResponseCode(Ljava/lang/String;)I
    .locals 5
    .param p1, "requestUrl"    # Ljava/lang/String;

    .line 178
    nop

    .line 179
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "getQr"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xc8

    if-eqz v0, :cond_1

    .line 180
    const-string v0, "hasQr"

    invoke-static {v0}, Lcom/pixplicity/easyprefs/library/Prefs;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x190

    goto :goto_0

    .line 182
    :cond_1
    nop

    .line 183
    :goto_0
    return v1
.end method

.method private final getResponseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "requestUrl"    # Ljava/lang/String;

    .line 204
    nop

    .line 205
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "registerMerchant"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    const-string v1, "hasQr"

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/pixplicity/easyprefs/library/Prefs;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    const-string v0, "{ \"message\": \"Merchant created successfully\", \"data\": { \"address\": { \"city\": \"LAGOS\", \"country\": \"NG\", \"line_1\": \"Kabiru str\", \"line_2\": null, \"zip\": \"100001\" }, \"booking_reference_prefix\": \"Payment to dapo@webmallng.com completed\", \"contact\": { \"emails\": [], \"gender\": null, \"name\": null, \"phone\": null }, \"ext_id\": \"2058XU23\", \"inserted_at\": \"2021-12-31T07:37:46.485082Z\", \"merchant_branch_id\": \"2058XU23\", \"merchant_ext_id\": \"c2306f02-6a92-21ea-957c-f23c929b0057\", \"name\": \"dapo@webmallng.com\", \"state\": \"ACTIVE\", \"updated_at\": \"2021-12-31T07:37:46.485082Z\", \"virtual_terminal\": null } }"

    goto :goto_0

    .line 209
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    .line 210
    const-string v5, "getPostal"

    check-cast v5, Ljava/lang/CharSequence;

    .line 209
    invoke-static {v0, v5, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    const-string v0, "{ \"ABIA\": \"440001\", \"ABUJA\": \"900001\", \"ADAMAWA\": \"640001\", \"AKWA-IBOM\": \"520001\", \"ANAMBRA\": \"420001\", \"BAUCHI\": \"740001\", \"BAYELSA\": \"561001\", \"BENUE\": \"970001\", \"BORNO\": \"600001\", \"CROSS-RIVER\": \"540001\", \"DELTA\": \"320001\", \"EBONYI\": \"840001\", \"EDO\": \"300001\", \"EKITI\": \"360001\", \"ENUGU\": \"400001\", \"GOMBE\": \"760001\", \"IMO\": \"460001\", \"JIGAWA\": \"720001\", \"KADUNA\": \"700001\", \"KANO\": \"800001\", \"KATSINA\": \"820001\", \"KEBBI\": \"860001\", \"KOGI\": \"260001\", \"KWARA\": \"240001\", \"LAGOS\": { \"MAINLAND\": \"100001\", \"ISLAND\": \"101001\" }, \"NASARAWA\": \"962001\", \"NIGER\": \"920001\", \"OGUN\": \"110001\", \"ONDO\": \"340001\", \"OSUN\": \"230001\", \"OYO\": \"200001\", \"PLATEAU\": \"930001\", \"RIVERS\": \"500001\", \"SOKOTO\": \"840001\", \"TARABA\": \"660001\", \"YOBE\": \"320001\", \"ZAMFARA\": \"860001\" }"

    goto :goto_0

    .line 212
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v5, "getQr"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v0, v5, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    invoke-static {v1}, Lcom/pixplicity/easyprefs/library/Prefs;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    const-string v0, "{\"status\":\"failed\", \"message\":\"merchant not registered\"}"

    goto :goto_0

    .line 218
    :cond_2
    const-string v0, "{ \"qr\": \"data:image/png;base64,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\", \"transactionId\": \"BC04012022131608438097\" }"

    goto :goto_0

    .line 221
    :cond_3
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    .line 222
    const-string v1, "getMCC"

    check-cast v1, Ljava/lang/CharSequence;

    .line 221
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 223
    const-string v0, "{ \"aero servicio carabobo\": \"6236\", \"insurance sales, underwriting and premiums\": \"6300\", \"insurance\u2013premiums\": \"6381\", \"insurance, not elsewhere classified ( no longer valid for first presentment work)\": \"6399\", \"real estate agents and managers\": \"6513\", \"remote stored value load \u2014 member financial institution\": \"6529\", \"remove stored value load \u2014 merchant\": \"6530\", \"payment transaction\u2014customer financial institution\": \"6532\", \"payment transaction\u2014merchant\": \"6533\", \"value purchase\u2013member financial institution\": \"6535\", \"moneysend intracountry\": \"6536\", \"moneysend intercountry\": \"6537\", \"moneysend funding\": \"6538\", \"funding transaction (excluding moneysend)\": \"6539\", \"non-financial institutions \u2013 stored value card purchase/load\": \"6540\", \"overpayments\": \"6611\", \"savings bonds\": \"6760\", \"lodging \u2014 hotels, motels and resorts\": \"7011\", \"timeshares\": \"7012\", \"sporting and recreational camps\": \"7032\", \"trailer parks and camp-sites\": \"7033\", \"laundry, cleaning and garment services\": \"7210\", \"laundry services \u2014 family and commercial\": \"7211\", \"dry cleaners\": \"7216\", \"carpet and upholstery cleaning\": \"7217\", \"photographic studios\": \"7221\", \"barber and beauty shops\": \"7230\", \"shoe repair shops, shoe shine parlours and hat cleaning shops\": \"7251\", \"funeral services and crematoriums\": \"7261\", \"dating and escort services\": \"7273\", \"tax preparation services\": \"7276\", \"counselling services \u2014 debt, marriage and personal\": \"7277\", \"buying and shopping services and clubs\": \"7278\", \"hospital patient-personal funds withdrawal\": \"7280\", \"babysitting services\": \"7295\", \"clothing rentals \u2014 costumes, uniforms and formal wear\": \"7296\", \"massage parlours\": \"7297\", \"health and beauty spas\": \"7298\", \"miscellaneous personal services \u2014 not elsewhere classified\": \"7299\", \"advertising services\": \"7311\", \"consumer credit reporting agencies\": \"7321\", \"debt collection agencies\": \"7322\", \"blueprinting and photocopying services\": \"7332\", \"commercial photography, art and graphics\": \"7333\", \"quick copy, reproduction and blueprinting services\": \"7338\", \"stenographic and secretarial support services\": \"7339\", \"exterminating and disinfecting services\": \"7342\", \"cleaning, maintenance and janitorial services\": \"7349\", \"employment agencies and temporary help services\": \"7361\", \"computer programming, data processing and integrated systems design services\": \"7372\", \"information retrieval services\": \"7375\", \"computer maintenance and repair services \u2014 not elsewhere classified\": \"7379\", \"management, consulting and public relations services\": \"7392\", \"detective agencies, protective agencies and security services, including armoured cars and guard dogs\": \"7393\", \"equipment, tool, furniture and appliance rentals and leasing\": \"7394\", \"photofinishing laboratories and photo developing\": \"7395\", \"business services \u2014 not elsewhere classified\": \"7399\", \"truck stop\": \"7511\", \"automobile rental agency\u2014not elsewhere classified\": \"7512\", \"truck and utility trailer rentals\": \"7513\", \"motor home and recreational vehicle rentals\": \"7519\", \"parking lots and garages\": \"7523\", \"express payment service merchants\u2013parking lots and garages\": \"7524\", \"automotive body repair shops\": \"7531\", \"tyre retreading and repair shops\": \"7534\", \"automotive paint shops\": \"7535\", \"automotive service shops (non-dealer)\": \"7538\", \"automotive service shops (spain) - other merchant categories\": \"7539\", \"car washes\": \"7542\", \"towing services\": \"7549\", \"electronics repair shops\": \"7622\", \"air conditioning and refrigeration repair shops\": \"7623\", \"electrical and small appliance repair shops\": \"7629\", \"watch, clock and jewellery repair shops\": \"7631\", \"furniture reupholstery, repair and refinishing\": \"7641\", \"welding services\": \"7692\", \"miscellaneous repair shops and related services\": \"7699\", \"government-owned lotteries (us region only)\": \"7800\", \"government licensed on-line casinos (on-line gambling) (us region only)\": \"7801\", \"government-licensed horse/dog racing (us region only)\": \"7802\", \"motion picture and video tape production and distribution\": \"7829\", \"motion picture theatres\": \"7832\", \"express payment service \u2014 motion picture theater\": \"7833\", \"video tape rentals\": \"7841\", \"dance halls, studios and schools\": \"7911\", \"theatrical producers (except motion pictures) and ticket agencies\": \"7922\", \"bands, orchestras, and miscellaneous entertainers (not elsewhere classified)\": \"7929\", \"billiard and pool establishments\": \"7932\", \"bowling alleys\": \"7933\", \"commercial sports, professional sports clubs, athletic fields and sports promoters\": \"7941\", \"tourist attractions and exhibits\": \"7991\", \"public golf courses\": \"7992\", \"video amusement game supplies\": \"7993\", \"video game arcades and establishments\": \"7994\", \"betting, including lottery tickets, casino gaming chips, off-track betting, and wagers at race tracks\": \"7995\", \"amusement parks, circuses, carnivals, and fortune tellers\": \"7996\", \"membership clubs (sports, recreation, athletic), country clubs and private golf courses\": \"7997\", \"aquariums, seaquariums, dolphinariums, and zoos\": \"7998\", \"recreation services \u2014 not elsewhere classified\": \"7999\", \"doctors and physicians \u2014 not elsewhere classified\": \"8011\", \"dentists and orthodontists\": \"8021\", \"osteopaths\": \"8031\", \"chiropractors\": \"8041\", \"optometrists and ophthalmologists\": \"8042\", \"opticians, optical goods and eyeglasses\": \"8043\", \"optical goods and eyeglasses\": \"8044\", \"podiatrists and chiropodists\": \"8049\", \"nursing and personal care facilities\": \"8050\", \"hospitals\": \"8062\", \"medical and dental laboratories\": \"8071\", \"medical services and health practitioners \u2014 not elsewhere classified\": \"8099\", \"legal services and attorneys\": \"8111\", \"elementary and secondary schools\": \"8211\", \"colleges, universities, professional schools and junior colleges\": \"8220\", \"correspondence schools\": \"8241\", \"business and secretarial schools\": \"8244\", \"trade and vocational schools\": \"8249\", \"schools and educational services \u2014 not elsewhere classified\": \"8299\", \"child care services\": \"8351\", \"charitable and social service organizations\": \"8398\", \"civic, social and fraternal associations\": \"8641\", \"political organizations\": \"8651\", \"religious organizations\": \"8661\", \"automobile associations\": \"8675\", \"membership organization \u2014 not elsewhere classified\": \"8699\", \"testing laboratories (non-medical)\": \"8734\", \"architectural, engineering, and surveying services\": \"8911\", \"accounting, auditing, and bookkeeping services\": \"8931\", \"professional services \u2014 not elsewhere classified\": \"8999\", \"i-purchasing pilot\": \"9034\", \"court costs, including alimony and child support\": \"9211\", \"fines\": \"9222\", \"bail and bond payments\": \"9223\", \"tax payments\": \"9311\", \"government services \u2014 not elsewhere classified\": \"9399\", \"postal services \u2014 government only\": \"9402\", \"u.s. federal government agencies or departments\": \"9405\", \"government-owned lotteries (non-u.s. region)\": \"9406\", \"automated referral service\": \"9700\", \"visa credential server\": \"9701\", \"emergency services (gcas) (visa use only)\": \"9702\", \"uk supermarkets, electronic hot file\": \"9751\", \"uk petrol stations, electronic hot file\": \"9752\", \"gambling-horse, dog racing, state lottery\": \"9754\", \"intra-company purchases\": \"9950\", \"veterinary services\": \"0742\", \"wine producers\": \"0743\", \"champagne producers\": \"0744\", \"agricultural cooperatives\": \"0763\", \"landscaping and horticultural services\": \"0780\", \"airlines (codes between 3000 and 3350)\": \"G300\", \"car rentals (codes between 3351 and 3500)\": \"G335\", \"hotels (codes between 3501 and 3999)\": \"G350\" }"

    goto :goto_0

    .line 224
    :cond_4
    const-string v0, "{}"

    .line 204
    :goto_0
    return-object v0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chain.request().url.toUri().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .local v0, "requestUri":Ljava/lang/String;
    const-wide/16 v1, 0xbb8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 174
    invoke-direct {p0, v0}, Lcom/woleapp/netpos/contactless/network/BlueCodeInterceptor;->getResponseCode(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/woleapp/netpos/contactless/network/BlueCodeInterceptor;->getResponseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/woleapp/netpos/contactless/network/BlueCodeInterceptor;->getResponse(Lokhttp3/Interceptor$Chain;ILjava/lang/String;)Lokhttp3/Response;

    move-result-object v1

    return-object v1
.end method
