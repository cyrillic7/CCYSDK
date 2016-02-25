.class public Lcom/snda/youni/sdk/DownloadWebPage;
.super Landroid/app/AlertDialog;
.source "DownloadWebPage.java"


# static fields
.field private static final COLOR_TEXT_COLOR_BLACK:I = -0xd2d2d3

.field private static final COLOR_TEXT_COLOR_GRAY_LIGHT:I = -0x171718

.field private static final COLOR_TEXT_COLOR_ORANGE:I = -0x6a00

.field private static final COLOR_TEXT_COLOR_RED:I = -0x898ac

.field public static final COLOR_TEXT_WHITE:I = -0x1

.field private static final COLOR_TITLE_BAR_BG:I = -0xc7670e

.field private static final ID_BACK:I = 0xa

.field private static final ID_DOWNLOAD_BUTTON:I = 0x9

.field private static final ID_ERROR_EXT_INFO_LAYOUT:I = 0x3

.field private static final ID_ERROR_INFO_LAYOUT:I = 0x2

.field public static final SIZE_SMALL_TEXT:I = 0x10


# instance fields
.field private ID_TITLE_BAR:I

.field private density:F

.field private loadError:Z

.field private loadingFailedLayout:Landroid/widget/RelativeLayout;

.field private loadingLayout:Landroid/widget/TextView;

.field private mWebView:Landroid/webkit/WebView;

.field private titleLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/snda/youni/sdk/DownloadWebPage;->ID_TITLE_BAR:I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/snda/youni/sdk/DownloadWebPage;->ID_TITLE_BAR:I

    .line 61
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/snda/youni/sdk/DownloadWebPage;->ID_TITLE_BAR:I

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/snda/youni/sdk/DownloadWebPage;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/snda/youni/sdk/DownloadWebPage;)Z
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/snda/youni/sdk/DownloadWebPage;->loadError:Z

    return v0
.end method

.method static synthetic access$2(Lcom/snda/youni/sdk/DownloadWebPage;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage;->loadingLayout:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/snda/youni/sdk/DownloadWebPage;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage;->titleLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/snda/youni/sdk/DownloadWebPage;Z)V
    .registers 2

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->loadError:Z

    return-void
.end method

.method static synthetic access$5(Lcom/snda/youni/sdk/DownloadWebPage;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage;->loadingFailedLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private attachTextViewToTitleBar(Landroid/widget/RelativeLayout;)V
    .registers 4
    .param p1, "titleLayout"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->getBackTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 178
    .local v0, "backView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 180
    .local v1, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 181
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 182
    return-void
.end method

.method private getBackTextView()Landroid/widget/TextView;
    .registers 7

    .prologue
    const/4 v3, -0x2

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 184
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 185
    .local v0, "backView":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 186
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 187
    const/16 v2, 0xf

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 188
    iget v2, p0, Lcom/snda/youni/sdk/DownloadWebPage;->density:F

    const/high16 v3, 0x41700000

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 189
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    const-string v2, "< \u8fd4\u56de"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const/4 v2, 0x2

    const/high16 v3, 0x41800000

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 193
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 194
    new-instance v2, Lcom/snda/youni/sdk/DownloadWebPage$4;

    invoke-direct {v2, p0}, Lcom/snda/youni/sdk/DownloadWebPage$4;-><init>(Lcom/snda/youni/sdk/DownloadWebPage;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-object v0
.end method

.method public static getQueryParams(Ljava/lang/String;)Ljava/util/Map;
    .registers 16
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v14, 0x1

    .line 315
    :try_start_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 316
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v10, "\\?"

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, "urlParts":[Ljava/lang/String;
    array-length v10, v6

    if-le v10, v14, :cond_1c

    .line 318
    const/4 v10, 0x1

    aget-object v5, v6, v10

    .line 319
    .local v5, "query":Ljava/lang/String;
    const-string v10, "&"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    :goto_1a
    if-lt v9, v11, :cond_1d

    .line 336
    .end local v5    # "query":Ljava/lang/String;
    :cond_1c
    return-object v4

    .line 319
    .restart local v5    # "query":Ljava/lang/String;
    :cond_1d
    aget-object v3, v10, v9

    .line 320
    .local v3, "param":Ljava/lang/String;
    const-string v12, "="

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "pair":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v2, v12

    const-string v13, "UTF-8"

    invoke-static {v12, v13}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "key":Ljava/lang/String;
    const-string v7, ""

    .line 323
    .local v7, "value":Ljava/lang/String;
    array-length v12, v2

    if-le v12, v14, :cond_3c

    .line 324
    const/4 v12, 0x1

    aget-object v12, v2, v12

    const-string v13, "UTF-8"

    invoke-static {v12, v13}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 327
    :cond_3c
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 328
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v8, :cond_4c

    .line 329
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .restart local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_4c
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_4f} :catch_52

    .line 319
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    .line 337
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pair":[Ljava/lang/String;
    .end local v3    # "param":Ljava/lang/String;
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5    # "query":Ljava/lang/String;
    .end local v6    # "urlParts":[Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_52
    move-exception v0

    .line 338
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9
.end method

.method private getRetryButton()Landroid/widget/Button;
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, -0x1

    const/high16 v5, 0x41c80000

    .line 291
    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 292
    .local v1, "view":Landroid/widget/Button;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 293
    .local v0, "dashParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/snda/youni/sdk/DownloadWebPage;->density:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, p0, Lcom/snda/youni/sdk/DownloadWebPage;->density:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, p0, Lcom/snda/youni/sdk/DownloadWebPage;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/16 v5, 0xa

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 294
    invoke-virtual {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 295
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xc7670e

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    const/4 v2, 0x2

    const/high16 v3, 0x41800000

    invoke-virtual {v1, v2, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 298
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 299
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 300
    const-string v2, "\u91cd\u8bd5"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 301
    new-instance v2, Lcom/snda/youni/sdk/DownloadWebPage$5;

    invoke-direct {v2, p0}, Lcom/snda/youni/sdk/DownloadWebPage$5;-><init>(Lcom/snda/youni/sdk/DownloadWebPage;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    return-object v1
.end method

.method private getWebView()Landroid/webkit/WebView;
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 216
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 217
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 218
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 219
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 220
    .local v1, "webView":Landroid/webkit/WebView;
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    return-object v1
.end method

.method private loadingFailedLayout()Landroid/widget/RelativeLayout;
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 251
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 252
    .local v0, "layout":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 253
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x3

    iget v3, p0, Lcom/snda/youni/sdk/DownloadWebPage;->ID_TITLE_BAR:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 254
    invoke-direct {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->newErrorMentionView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 255
    invoke-direct {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->newErrorMentionExtInfoView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 256
    invoke-direct {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->getRetryButton()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    return-object v0
.end method

.method private loadingLayout()Landroid/widget/TextView;
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 234
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 235
    .local v1, "tv":Landroid/widget/TextView;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 236
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xf

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 237
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 238
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    const-string v2, "Loading..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    return-object v1
.end method

.method private newErrorMentionExtInfoView()Landroid/widget/TextView;
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 278
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 279
    .local v0, "mentionExtInfoView":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    iget v3, p0, Lcom/snda/youni/sdk/DownloadWebPage;->density:F

    const/high16 v4, 0x41f00000

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 280
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 281
    iget v2, p0, Lcom/snda/youni/sdk/DownloadWebPage;->density:F

    const/high16 v3, 0x41200000

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 282
    invoke-virtual {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 283
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    const/high16 v2, 0x41800000

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 285
    const-string v2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u786e\u8ba4\u8fde\u63a5\u6210\u529f\u540e\u91cd\u8bd5\uff01"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    const v2, -0xd2d2d3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 287
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setId(I)V

    .line 288
    return-object v0
.end method

.method private newErrorMentionView()Landroid/widget/TextView;
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 264
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 265
    .local v0, "mentionView":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    iget v3, p0, Lcom/snda/youni/sdk/DownloadWebPage;->density:F

    const/high16 v4, 0x41f00000

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 266
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 267
    iget v2, p0, Lcom/snda/youni/sdk/DownloadWebPage;->density:F

    const/high16 v3, 0x41a00000

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 269
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    const/high16 v2, 0x41800000

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 271
    const-string v2, "\u51fa\u9519\u5566!"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    const v2, -0x898ac

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setId(I)V

    .line 274
    return-object v0
.end method

.method private newRootRelativeLayout()Landroid/widget/RelativeLayout;
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 227
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 228
    .local v0, "rootLayoutView":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x171718

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    return-object v0
.end method

.method private newTitleBarLayout()Landroid/widget/RelativeLayout;
    .registers 6

    .prologue
    .line 170
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, "titleLayout":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x42480000

    iget v4, p0, Lcom/snda/youni/sdk/DownloadWebPage;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->ID_TITLE_BAR:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 173
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xc7670e

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    return-object v0
.end method


# virtual methods
.method public getTitleTextView()Landroid/widget/TextView;
    .registers 7

    .prologue
    const/4 v3, -0x2

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 204
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 205
    .local v1, "titleTextView":Landroid/widget/TextView;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 206
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xf

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 207
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 208
    iget v2, p0, Lcom/snda/youni/sdk/DownloadWebPage;->density:F

    const/high16 v3, 0x41700000

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v5, v5, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 209
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    const/4 v2, 0x2

    const/high16 v3, 0x41800000

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 211
    const-string v2, "\u5f53\u9762\u4ed8"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->density:F

    .line 72
    invoke-super {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 73
    invoke-direct {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->newRootRelativeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 75
    .local v0, "rootLayoutView":Landroid/widget/RelativeLayout;
    invoke-direct {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->newTitleBarLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->titleLayout:Landroid/widget/RelativeLayout;

    .line 76
    iget-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->titleLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/snda/youni/sdk/DownloadWebPage;->attachTextViewToTitleBar(Landroid/widget/RelativeLayout;)V

    .line 77
    iget-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->titleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 79
    invoke-direct {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->loadingLayout()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->loadingLayout:Landroid/widget/TextView;

    .line 80
    invoke-direct {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->loadingFailedLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->loadingFailedLayout:Landroid/widget/RelativeLayout;

    .line 81
    iget-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->loadingLayout:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 82
    iget-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->loadingFailedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 83
    invoke-direct {p0}, Lcom/snda/youni/sdk/DownloadWebPage;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->mWebView:Landroid/webkit/WebView;

    .line 84
    iget-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 85
    iget-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 86
    iget-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->loadingFailedLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/snda/youni/sdk/DownloadWebPage;->setContentView(Landroid/view/View;)V

    .line 88
    iget-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 89
    iget-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 90
    iget-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/snda/youni/sdk/DownloadWebPage$1;

    invoke-direct {v2, p0}, Lcom/snda/youni/sdk/DownloadWebPage$1;-><init>(Lcom/snda/youni/sdk/DownloadWebPage;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 104
    iget-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/snda/youni/sdk/DownloadWebPage$2;

    invoke-direct {v2, p0}, Lcom/snda/youni/sdk/DownloadWebPage$2;-><init>(Lcom/snda/youni/sdk/DownloadWebPage;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    iget-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/snda/youni/sdk/DownloadWebPage$3;

    invoke-direct {v2, p0}, Lcom/snda/youni/sdk/DownloadWebPage$3;-><init>(Lcom/snda/youni/sdk/DownloadWebPage;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 165
    iget-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 166
    iget-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 167
    iget-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage;->mWebView:Landroid/webkit/WebView;

    sget-object v2, Lcom/snda/youni/sdk/YouniPay;->guideUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 168
    return-void
.end method
